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
 
CREATE OR REPLACE FUNCTION log_customer_name_changes()
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
CREATE TRIGGER customer_name_change
  BEFORE UPDATE
  ON Customers
  FOR EACH ROW
  EXECUTE PROCEDURE log_customer_name_changes();
 
CREATE OR REPLACE FUNCTION log_credit_cards()
RETURNS trigger AS
$BODY$
BEGIN
IF NEW.CardNumber <> OLD.CardNumber THEN
INSERT INTO CreditCardHistory(CustomerID,CardNumber,TimeChanged)
VALUES(OLD.CustomerID,OLD.CardNumber,now());
END IF;

RETURN NEW;
END;
$BODY$

LANGUAGE plpgsql VOLATILE 
COST 100;

CREATE TRIGGER card_number_change
  BEFORE UPDATE
  ON CreditCardInfo
  FOR EACH ROW
  EXECUTE PROCEDURE log_credit_cards();

