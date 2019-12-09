CREATE OR REPLACE FUNCTION customer_history()
RETURNS trigger AS
$BODY$
BEGIN
IF NEW.LastName <> OLD.LastName THEN
INSERT INTO CustomerAudits(CustomerID,LastName,TimeChanged)
VALUES(OLD.CustomerID,OLD.LastName,now());
END IF;

RETURN NEW;
END;
$BODY$

LANGUAGE plpgsql VOLATILE 
COST 100;

CREATE TRIGGER customer_lastname_change
  BEFORE UPDATE
  ON Customers
  FOR EACH ROW
  EXECUTE PROCEDURE customer_history();

UPDATE Customers
SET LastName = 'Turney'
WHERE CustomerID = '1056';

select * from CustomerAudits;
 

CREATE OR REPLACE FUNCTION log_salary()
RETURNS trigger AS
$BODY$
BEGIN
IF NEW.EmpSalary <> OLD.EmpSalary THEN
INSERT INTO SalaryHistory(AccountID,EmpSalary,TimeChanged)
VALUES(OLD.AccountID,OLD.EmpSalary,now());
END IF;

RETURN NEW;
END;
$BODY$

LANGUAGE plpgsql VOLATILE 
COST 100;
CREATE TRIGGER salary_change
  BEFORE UPDATE
  ON Salary
  FOR EACH ROW
  EXECUTE PROCEDURE log_salary();
 
UPDATE Salary
SET EmpSalary = 50000
WHERE AccountID = '7843A';
 
select * from SalaryHistory;
 

--CREATE PROCEDURE InsertMusicTable(ProductID varchar(100), Description varchar(100), Manufacturer varchar(100))
--LANGUAGE SQL
--AS $BODY$
--    INSERT INTO UprightBass(ProductID, Description, Manufacturer)
--    VALUES(ProductID, Description, Manufacturer);   
--$BODY$;

CREATE FUNCTION passwordchange() RETURNS TRIGGER
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF NEW.UserPassword != OLD.UserPassword THEN
    NEW.LogTime := CURRENT_TIME;
 	RAISE NOTICE 'Password changed for user ''%'' on %', OLD.UserName, NEW.LogTime;
  END IF;
  RETURN NEW;
END;
$$;

CREATE TRIGGER password_changed
  BEFORE UPDATE ON CredentialsSignIn
  FOR EACH ROW
  EXECUTE PROCEDURE passwordchange();
 
UPDATE CredentialsSignIn SET UserPassword='keyboardsrule88' WHERE username='guitarguy54';

select * from CredentialsSignIn;

