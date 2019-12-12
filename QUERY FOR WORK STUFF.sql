--@@@@@@@@@@@ all followups that should exist (for all patients) @@@@@@@@@@
	WITH
	CensorDates AS
	( --Select Patient, joined to each form that can produce a censor date -- get minimum
	SELECT P.ID AS PatientID, CensorDate --D.DeathDate, PRETX.PretransplantFollowupDate, POSTTX.FollowupDate
	FROM dbo.Patient P
	OUTER APPLY --Death form with complete status
	(SELECT TOP 1 D.*, PatientID FROM dbo.Death D INNER JOIN dbo.Form F ON D.FormID = F.ID
	WHERE F.PatientID = P.ID AND F.Status = 3 AND IsDeleted = 0 ORDER BY D.DeathDate
	) D
	OUTER APPLY --Transfer = yes or Removed from List = yes on Pretx Followup with complete status
	(SELECT TOP 1 PRETX.*, PatientID FROM dbo.PretransplantFollowup PRETX INNER JOIN dbo.Form F ON PRETX.FormID = F.ID
	WHERE F.PatientID = P.ID AND (RemovedFromList = 1 OR FollowedElsewhere = 1) AND F.Status = 3 AND IsDeleted = 0 ORDER BY PRETX.PretransplantFollowupDate
	) PRETX
	OUTER APPLY --PatientFollowedATPHTS = no on Posttx Followup with complete status
	(SELECT TOP 1 POSTTX.*, PatientID FROM dbo.Followup POSTTX INNER JOIN dbo.Form F ON POSTTX.FormID = F.ID
	WHERE F.PatientID = P.ID AND (PatientFollowedATPHTS = 0 OR PatientSeenForFollowup = 3) AND F.Status = 3 AND IsDeleted = 0 ORDER BY POSTTX.FollowupDate
	) POSTTX
	CROSS APPLY (SELECT MIN(d) AS CensorDate FROM (VALUES (DeathDate), (ISNULL(RemovalDate, TransferDate)), (LastCenterFollowupDate)) AS a(d)) A
	),
	numbers AS ( --Produce 
		  SELECT 0 AS n
		  UNION ALL
		  SELECT n + 1 AS n
		  FROM numbers
		  WHERE n < 100
		 ),
	CTEIntervals AS (
		--outer level query to self-join Transplant with itself as FIRSTQ and SECONDQ
		--row number offset creates interval between subsequent transplants
		SELECT FIRSTQ.PatientID, TransplantDate1 AS TransplantDate, ISNULL(TransplantDate2, getdate()) AS TransplantDate2, CensorDate, FIRSTQ.CreatedDate
		FROM 
			--FIRSTQ = transplant joined...
			(SELECT PatientID, TransplantDate AS TransplantDate1,
			row_number() OVER(PARTITION BY PatientID ORDER BY TransplantDate ASC) AS [rn],
			TX.CreatedDate
			FROM dbo.Transplant TX
				INNER JOIN dbo.Form F ON TX.FormID = F.ID
				INNER JOIN dbo.Patient P ON F.PatientID = P.ID AND F.Status = 3 AND F.IsDeleted = 0) FIRSTQ
			LEFT OUTER JOIN 
			--SECONDQ = ...with itself by PatientID and RowNum, RowNum-1 to offset
			(SELECT PatientID, TransplantDate AS TransplantDate2,
			row_number() OVER(PARTITION BY PatientID ORDER BY TransplantDate ASC) AS [rn]
			FROM dbo.Transplant TXO
				INNER JOIN dbo.Form FO ON TXO.FormID = FO.ID
				INNER JOIN dbo.Patient PO ON FO.PatientID = PO.ID AND FO.Status = 3 AND FO.IsDeleted = 0) SECONDQ
			ON FIRSTQ.rn = SECONDQ.rn - 1 AND FirstQ.PatientID = SECONDQ.PatientID
			LEFT OUTER JOIN CensorDates CD ON CD.PatientID = FIRSTQ.PatientID
	),
	Followups AS (
		--Get the Interval, and add "n" to the TransplantDate for each row 0-99 that is within the appropriate window
		SELECT CTEIntervals.*, num.n, DATEADD(YEAR, num.n, TransplantDate) AS FollowupDate,
		DATEADD(DAY, -(CASE WHEN CreatedDate >= '2016-08-03 00:00:00.000' THEN 90 ELSE 180 END), DATEADD(YEAR, num.n, TransplantDate)) AS FollowupDateLowerWindow, --lower window bound
		DATEADD(DAY, CASE WHEN CreatedDate >= '2016-08-03 00:00:00.000' THEN 90 ELSE 180 END, DATEADD(YEAR, num.n, TransplantDate)) AS FollowupDateUpperWindow --upper window bound
	FROM CTEIntervals
	INNER JOIN numbers num ON DATEADD(YEAR, num.n, TransplantDate) <= TransplantDate2 WHERE n > 0 --exclude n=0 -> a followup the same day as the transplant
	AND (DATEADD(YEAR, num.n, TransplantDate) <= CensorDate OR CensorDate IS NULL) --Also make sure to exclude records after the corresponding censor date
	) SELECT F.*, HospitalID FROM Followups F
	INNER JOIN dbo.Patient P ON F.PatientID = P.ID
