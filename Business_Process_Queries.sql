-- These queries are to cover the business processes detailed in the specification

use Service_Information;        -- Tells the SQL Queries to affect only the relevant database

-- Business process 1 (lines 6 to 19)
INSERT INTO service (           
service_id,
drop_off_date,
drop_off_time,
description_of_work,
registration_number
)
VALUES (
'NERV-718',												-- Service ID
'12/23/2025',									-- Drop off date
'09:30:00',										-- Drop off time
'Oil change and general inspection',			-- Description of work
'LRZ 7892'										-- Registration number
);



-- Business process 2 (lines 24 to 52)
DECLARE @RegistrationNumber CHAR(8) = 'AF56 WWJ';
DECLARE @NewDropOffDate VARCHAR(10) = '6/19/2021';                         -- mm/dd/yyyy

SELECT
M.m_name AS MechanicName,
COUNT(MS.service_id) AS JobsOnDropOffDate
FROM
MECHANIC AS M
JOIN
MECHANIC_SERVICE AS MS ON M.employee_id = MS.employee_id
JOIN
SERVICE AS S ON MS.service_id = S.service_id
WHERE
S.registration_number = @RegistrationNumber
AND S.drop_off_date < @NewDropOffDate
    GROUP BY
M.employee_id, M.m_name
HAVING
(
SELECT
COUNT(MS2.service_id)
FROM
MECHANIC_SERVICE AS MS2
JOIN
SERVICE AS S2 ON MS2.service_id = S2.service_id
WHERE
MS2.employee_id = M.employee_id 
AND S2.drop_off_date = @NewDropOffDate 
) = 0;




-- Business process 3 (lines 57 to 79)
DECLARE @StartDate VARCHAR(10) = '6/17/2021';  -- mm/dd/yyyy
DECLARE @EndDate VARCHAR(10) = '6/21/2021';    -- mm/dd/yyyy

SELECT 
m.employee_id,
m.m_name AS mechanic_name,
m.m_phone_number AS phone_number,
COUNT(DISTINCT ms.service_id) AS number_of_services,
ISNULL(SUM(ms.time_spent_on_service), 0) AS total_hours_spent
FROM 
MECHANIC m
LEFT JOIN MECHANIC_SERVICE ms ON m.employee_id = ms.employee_id
LEFT JOIN SERVICE s ON ms.service_id = s.service_id 
AND CONVERT(DATE, s.drop_off_date, 101) >= CONVERT(DATE, @StartDate, 101)
AND CONVERT(DATE, s.drop_off_date, 101) <= CONVERT(DATE, @EndDate, 101)
GROUP BY 
m.employee_id,
m.m_name,
m.m_phone_number
ORDER BY 
total_hours_spent DESC;


 -- Business process 4 (lines 83 to 97)
SELECT                                                                 
C.c_name,
C.email_address,
CR.registration_number,
S.date_of_next_service
FROM
CUSTOMER C
INNER JOIN
CAR CR ON C.customer_id = CR.customer_id
INNER JOIN
SERVICE S ON CR.registration_number = S.registration_number
WHERE
S.date_of_next_service BETWEEN '6/17/2021' AND '6/21/2021'
ORDER BY
S.date_of_next_service;



-- Business process 5 (lines 102 to 140)
ALTER TABLE MECHANIC
ADD availability varchar(15);					-- Available, unavailable, sick, vacation, etc.
ALTER TABLE MECHANIC
ADD unavailable_from_date varchar(10);        -- mm/dd/yyyy
ALTER TABLE MECHANIC
ADD unavailable_to_date varchar(10);         -- mm/dd/yyyy

EXEC UpdMechanic4 @eid = 'E1331', @avail = 'Sick', @fromd = '12/05/2025', @tod = '12/12/2025';


DECLARE @MechanicID CHAR(5) = 'E0392'; 
DECLARE @StartDate VARCHAR(10) = '6/17/2021';       -- mm/dd/yyyy
DECLARE @EndDate VARCHAR(10) = '6/21/2021';         -- mm/dd/yyyy

SELECT
M.employee_id,
M.m_name AS Mechanic_Name,
MS.service_id,
S.drop_off_date,
S.drop_off_time,
S.description_of_work,
C.registration_number AS Car_Reg,
CUST.customer_id,
CUST.c_name AS Customer_Name
FROM
MECHANIC M
JOIN
MECHANIC_SERVICE MS ON M.employee_id = MS.employee_id
JOIN
SERVICE S ON MS.service_id = S.service_id
JOIN
CAR C ON S.registration_number = C.registration_number
JOIN
CUSTOMER CUST ON C.customer_id = CUST.customer_id
WHERE
M.employee_id = @MechanicID
AND S.drop_off_date BETWEEN @StartDate AND @EndDate
ORDER BY
S.drop_off_date, S.drop_off_time;