-- These queries create the stored procedures of the database

use Service_Information;	-- Tells the SQL Queries to affect only the relevant database

-- Lines 7 to 25 create the "Get" procedures. I made these to simplify viewing the tables

CREATE PROCEDURE GetCustomer
AS
SELECT * FROM CUSTOMER;

CREATE PROCEDURE GetCar
AS
SELECT * FROM CAR;

CREATE PROCEDURE GetService
AS
SELECT * FROM SERVICE;

CREATE PROCEDURE GetMechanic
AS
SELECT * FROM MECHANIC;

CREATE PROCEDURE GetMechanicService
AS
SELECT * FROM MECHANIC_SERVICE;

--Lines 29 to 62 create the "Insert" procedures. These are to simplify inserting data into the tables

CREATE PROCEDURE InsCustomer (@cid char(7), @cnam varchar(23), @eadd varchar(70), @pnum varchar(15))
AS
BEGIN
INSERT INTO CUSTOMER
VALUES(@cid, @cnam, @eadd, @pnum)
END;

CREATE PROCEDURE InsCar (@regn varchar(8), @make varchar(40), @model varchar(40), @datem varchar(10), @cid char(7))
AS
BEGIN
INSERT INTO CAR
VALUES (@regn, @make, @model, @datem, @cid)
END;

CREATE PROCEDURE InsService (@sid char(9), @dropd varchar(10), @dropt time(7), @desc varchar(100), @daten varchar(10), @mile int, @regn varchar(8))
AS
BEGIN
INSERT INTO SERVICE
VALUES (@sid, @dropd, @dropt, @desc, @daten, @mile, @regn)
END;

CREATE PROCEDURE InsMechanic (@eid char(5), @enam varchar(23), @epnum varchar(15), @grad varchar(17), @avail varchar(15), @fromd varchar(10), @tod varchar(10))
AS
BEGIN
INSERT INTO MECHANIC
VALUES (@eid, @enam, @epnum, @grad, @avail, @fromd, @tod)
END;

CREATE PROCEDURE InsMechanicService (@sid char(9), @eid char(5), @tspent decimal(4,2))
AS
BEGIN
INSERT INTO MECHANIC_SERVICE
VALUES (@sid, @eid, @tspent)
END;

-- Lines 66 to 152 create the "Update" procedures. With these, you can fix errors, or change information

CREATE PROCEDURE UpdCustomer1 (@cid char(7), @cnam varchar(23))
AS
BEGIN
UPDATE CUSTOMER
SET c_name = @cnam
WHERE customer_id = @cid
END;

CREATE PROCEDURE UpdCustomer2 (@cid char(7), @eadd varchar(70))
AS
BEGIN
UPDATE CUSTOMER
SET email_address = @eadd
WHERE customer_id = @cid
END;

CREATE PROCEDURE UpdCustomer3 (@cid char(7), @pnum varchar(15))
AS
BEGIN
UPDATE CUSTOMER
SET c_phone_number = @pnum
WHERE customer_id = @cid
END;

CREATE PROCEDURE UpdService1 (@sid char(9), @dropd varchar(10))
AS
BEGIN
UPDATE SERVICE
SET drop_off_date = @dropd
WHERE service_id = @sid
END;

CREATE PROCEDURE UpdService2 (@sid char(9), @dropt time(7))
AS
BEGIN
UPDATE SERVICE
SET drop_off_time = @dropt
WHERE service_id = @sid
END;

CREATE PROCEDURE UpdMechanic1 (@eid char(5), @enam varchar(23))
AS
BEGIN
UPDATE MECHANIC
SET m_name = @enam
WHERE employee_id = @eid
END;

CREATE PROCEDURE UpdMechanic2 (@eid char(5), @epnum varchar(15))
AS
BEGIN
UPDATE MECHANIC
SET m_phone_number = @epnum
WHERE employee_id = @eid
END;

CREATE PROCEDURE UpdMechanic3 (@eid char(5), @grad varchar(17))
AS
BEGIN
UPDATE MECHANIC
SET grade = @grad
WHERE employee_id = @eid
END;

CREATE PROCEDURE UpdMechanic4 (@eid char(5), @avail varchar(15), @fromd varchar(10), @tod varchar(10))
AS
BEGIN
UPDATE MECHANIC
SET availability = @avail, unavailable_from_date = @fromd, unavailable_to_date = @tod
WHERE employee_id = @eid
END;

CREATE PROCEDURE UpdMechanicService1 (@sid char(9), @tspent decimal(4,2))
AS
BEGIN
UPDATE MECHANIC_SERVICE
SET time_spent_on_service = @tspent
WHERE service_id = @sid
END;

CREATE PROCEDURE UpdMechanicService2 (@sid char(9), @eid char(5))
AS
BEGIN
UPDATE MECHANIC_SERVICE
SET employee_id = @eid
WHERE service_id = @sid
END;