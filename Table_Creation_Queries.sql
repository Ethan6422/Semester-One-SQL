-- These queries create the database and tables within the database

CREATE DATABASE Service_Information;	-- Creates the shell of the database

use Service_Information;				-- Tells the SQL Queries to affect only the relavent database

CREATE TABLE CUSTOMER					-- Creates the customer table
(customer_id char(7) not null,			-- Character chosen to allow insertion of the customer id's provided
c_name varchar(23),						-- 23 chosen as unlikely to find a longer name
email_address varchar(70),				-- 70 chosen as email addresses are usually quite long
c_phone_number varchar(15),				-- 15 chosen to account for the +44 (or equivalent) at the beginning of the numbers
CONSTRAINT pk_customer PRIMARY KEY(customer_id)		-- Primary key chosen as it uniquely identifies each customer
);

CREATE TABLE CAR					    -- Creates the car table
(registration_number varchar(8) not null,	-- 8 chosen to match the number of characters on a registration plate
make_of_car varchar(40),				-- 40 chosen to ensure no data is lost while inputting data 
model_of_car varchar(40),				-- 40 chosen to ensure no data is lost while inputting data 
date_of_manufacture varchar(10),		-- Variable character was chosen to support the date in the format "mm/dd/yyyy". This is not possible with the "date" data type
customer_id char(7) not null,			-- Identical to CUSTOMER to ensure referential integrity
CONSTRAINT pk_car PRIMARY KEY(registration_number),		-- Primary key chosen as it uniquely identifies each car
FOREIGN KEY(customer_id) REFERENCES customer(customer_id)	-- Foreign key chosen to link each car to the customer it belongs to
);

CREATE TABLE SERVICE					-- Creates the service table
(service_id char(9) not null,			-- Character chosen to allow insertion of the service id's provided
drop_off_date varchar(10),				-- Variable character was chosen to support the date in the format "dd/mm/yyyy". This is not possible with the "date" data type
drop_off_time time,						-- Time chosen as there is no other options
description_of_work varchar(100),		-- 100 chosen to ensure all of the information of the work can be inputted
date_of_next_service varchar(10),		-- Variable character was chosen to support the date in the format "mm/dd/yyyy". This is not possible with the "date" data type
car_milage int,							-- Integer chosen as small integer is too small for the required task
registration_number varchar(8) not null,		-- Identical to CAR to ensure referential integrity
CONSTRAINT pk_service PRIMARY KEY(service_id),		-- Primary key chosen as it uniquely identifies each service performed
FOREIGN KEY(registration_number) REFERENCES car(registration_number)	-- Foreign key chosen to link the service to the car it \
);																		-- was performed on, and by extension the customer the car belongs to

ALTER TABLE SERVICE REBUILD WITH (IGNORE_DUP_KEY = ON);

CREATE TABLE MECHANIC		-- Creates the mechanic table
(employee_id char(5) not null,		-- Character chosen to allow insertion of the customer id's provided
m_name varchar(23),				-- 23 chosen as unlikely to find a longer name
m_phone_number varchar(15),		-- 15 chosen to account for the +44 (or equivalent) at the beginning of the numbers
grade varchar(17)				-- 17 chosen to account for the various character lengths of the grades
CONSTRAINT pk_mechanic PRIMARY KEY(employee_id)		-- Primary key chosen as it uniquely identifies each employee
);

CREATE TABLE MECHANIC_SERVICE		-- Creates the mechanic service table
(service_id char(9) not null,		-- Identical to SERVICE to ensure referential integrity
employee_id char(5) not null,		-- Identical to MECHANIC to ensure referential integrity
time_spent_on_service decimal (4,2),	-- Decimal chosen as it is expected for the time to be inputted at "hh:mm"
CONSTRAINT pk_mechanic_service PRIMARY KEY(service_id, employee_id),	-- Primary keys and foreign keys were chosen so that \
FOREIGN KEY(service_id) REFERENCES service(service_id),				-- we could tell which service was performed by which \
FOREIGN KEY(employee_id) REFERENCES mechanic(employee_id)			-- employees
);


