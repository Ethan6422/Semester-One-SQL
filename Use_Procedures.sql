-- These queries allow the procedures to be edited and used freely

use Service_Information;		-- Tells the SQL Queries to affect only the relevant database

-- Lines 7 to 15 execute the "Insert" procedures

EXEC InsCustomer @cid = 'D25-ILU', @cnam = 'Ethan Hamilton', @eadd = 'eham@gmail.com', @pnum = '07186428923';

EXEC InsCar @regn = 'LRZ 7031', @make = 'Hyundai', @model = '2017', @datem = '06/13/2017', @cid = 'D25-ILU';

EXEC InsService @sid = 'NERV-718', @dropd = '02/01/2015', @dropt = '13:30:0', @desc = 'Testing brakes', @daten = '02/01/2016', @mile = 18732, @regn = 'LRZ 7031';

EXEC InsMechanic @eid = 'E1331', @enam = 'Ethan Hamilton', @epnum = '073649127523', @grad = 'Trainee', @avail = 'Available', @fromd = 'N/A', @tod = 'N/A';

EXEC InsMechanicService @sid = 'NERV-718', @eid = 'E1331', @tspent = 04.30;


-- Lines 20 to 40 execute the "Update" procedures

EXEC UpdCustomer1 @cid = 'D25-ILY', @cnam = 'David Beattie';

EXEC UpdCustomer2 @cid = 'D25-ILY', @eadd = 'dbeat@gmail.com';

EXEC UpdCustomer3 @cid = 'D25-ILY', @pnum = '01234567891';

EXEC UpdService1 @sid = 'NERV-718', @dropd = '05/23/2015';

EXEC UpdService2 @sid = 'NERV-718', @dropt = '09:15:0';

EXEC UpdMechanic1 @eid = 'E1331', @enam = 'David Beattie';

EXEC UpdMechanic2 @eid = 'E1331', @epnum = '01234567891';

EXEC UpdMechanic3 @eid = 'E1331', @grad = 'Senior Mechanic';

EXEC UpdMechanic4 @eid = 'E1331', @avail = 'Sick', @fromd = '12/05/2025', @tod = '12/12/2025';		-- Specifically for Business process 5

EXEC UpdMechanicService1 @sid = 'NERV-718', @tspent = 00.30;

EXEC UpdMechanicService2 @sid = 'S2006-135', @eid = 'E1331';


-- Lines 45 to 53 execute the "Get" procedures. They are also in the "Data_Insertion" queries, however the are here for quick access

EXEC GetCustomer;

EXEC GetCar;

EXEC GetService;

EXEC GetMechanic;

EXEC GetMechanicService;

DELETE FROM MECHANIC WHERE
employee_id = 'E1331';
