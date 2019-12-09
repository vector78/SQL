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
 
CREATE TABLE UprightBass (
   ProductID varchar(100),
   FOREIGN key (ProductID) references Product(ProductID),
   Description varchar(100),
   Manufacturer varchar(100)
   );


--CREATE PROCEDURE InsertMusicTable(ProductID varchar(100), Description varchar(100), Manufacturer varchar(100))
--LANGUAGE SQL
--AS $BODY$
--    INSERT INTO UprightBass(ProductID, Description, Manufacturer)
--    VALUES(ProductID, Description, Manufacturer);   
--$BODY$;
--
--CREATE OR REPLACE FUNCTION t2t2_f ()
--RETURNS TRIGGER
--AS
--$$
--BEGIN
--  INSERT INTO UprightBass
--              (ProductID,
--              Description,
--              VALUES (NEW.column_1,
--                      ...,
--                      NEW.column_n);
--
--  RETURN NEW;
--END;
--$$
--LANGUAGE plpgsql;

CREATE FUNCTION password_changed() RETURNS TRIGGER
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF NEW.UserPassword != OLD.UserPassword THEN
    NEW.LogTime := current_date;
  END IF;
  RETURN NEW;
END;
$$;
