-- These queries are designed to insert the given data into the database

use Service_Information;		-- Tells the SQL Queries to affect only the relavent database

INSERT INTO CUSTOMER(customer_id, c_name, email_address, c_phone_number)
VALUES 
('D13-101', 'Bette Davis', 'bette.davis@ulster.ac.uk', '41728003'),
('D13-203', 'Cary Grant', 'bigcary@yahoo.com', '+44417654321'),
('D13-42', 'Humphrey Bogart', 'bogieh@gmail.com', '07782751839'),
('D13-R93', 'John Wayne', 'N/A', '02890112233'),
('D14-38', 'Katharine Hepburn', 'kath_hep29@hotmail.com', 'N/A'),
('D17-022', 'Marilyn Monroe', 'marilyn@hotmail.com', '+88487618356732'),
('D17-080', 'Orson Welles', 'welles.orson@ulster.ac.uk', '08998736126'),
('R180-05', 'Vivien Leigh', 'viv.leigh38@gmail.com', '02890289675'),
('D13-51', 'Ingrid Bergman', 'IngridB@hotmail.com', '66419887654'),
('D13-306', 'William Holden', 'billyho66@yahoo.com', '+38198322843'),
('L231-12', 'Rita Hayworth', 'ritah99@outlook.com', '077709873980'),
('D13-R45', 'James Stewart', 'jimmy_stew@qub.ac.uk', '08770987654'),
('D14-025', 'James Dean', 'deenj@outlook.com', '+447780276405'),
('D14-16', 'Rock Hudson', 'rockyh@hotmail.com', 'N/A'),
('D14-V17', 'Tony Curtis', 't.curtis@yahoo.com', 'N/A'),
('L231-47', 'Elvis Presley', 'elvisp@yahoo.com', 'N/A'),
('L231-05', 'Burt Lancaster', 'N/A', '+447781904569'),
('D17-945', 'Frank Sinatra', 'N/A', '08870286004'),
('D17-043', 'Deborah Kerr', 'N/A', '02890672593'),
('R180-61', 'Elizabeth Taylor', 'N/A', '+442891785397'),
('R180-32', 'Susan Hayward', 'susan.hayward@yahoo.com', 'N/A'),
('D17-R14', 'Lana Turner', 'lana.turner@yahoo.com', 'N/A'),
('L231-44', 'Omar Sharif', 'sharifo18@hotmail.com', '00447880708090'),
('D14-37', 'Natalie Wood', 'nattiewood@outlook.com', 'N/A'),
('D14-V77', 'Doris Day', 'd.day67@hotmail.com', '+4478779297611'),
('D13-R71', 'Sean Connery', 'connery.sean007@outlook.com', 'N/A');



EXEC GetCustomer;


INSERT INTO CAR(registration_number, make_of_car, model_of_car, date_of_manufacture, customer_id)
VALUES
('BJI 111', 'Vauxhall', 'Astra', '7/2/2016', 'D13-101'),
('AF56 WWJ', 'Volkswagen', 'Golf', '5/25/2014', 'D13-203'),
('LV59 OTP', 'Volkswagen', 'Polo', '6/30/2015', 'D13-42'),
('SEZ 5629', 'Skoda', 'Superb', '11/26/2009', 'D13-R93'),
('MEZ 8086', 'Subaru', 'Impreza', '10/15/2017', 'D14-38'),
('GRZ 6511', 'Subaru', 'Outback', '4/1/2018', 'D17-022'),
('DCZ 1844', 'Nissan', 'Qashqai Visia', '3/13/2008', 'D17-080'),
('VIM 8955', 'Skoda', 'Superb', '10/14/2016', 'R180-05'),
('OEZ 1872', 'Alfa Romeo', 'Alfasud', '9/22/2014', 'D13-101'),
('D268 YCF', 'Audi', 'A8 TFSI e', '2/7/2020', 'D13-51'),
('CJ16 WED', 'Vauxhall', 'Corsa-e', '1/27/2020', 'D13-306'),
('W85 TTF', 'Nissan', 'Micra', '12/12/2017', 'D17-022'),
('LLZ 9362', 'Volkswagen', 'Golf', '8/30/2018', 'D13-306'),
('WVG 673', 'Volvo', 'V90', '12/13/2019', 'D17-080'),
('R99 YRK', 'BMW', '6 Series Gran Coupe', '11/4/2019', 'L231-12'),
('T779 OLI', 'Ford', 'Fiesta 1.25 Zetec', '3/16/2016', 'D13-R45'),
('BEZ 8826', 'Toyota', 'Corolla', '5/26/2015', 'D13-51'),
('G5 T77', 'Dacia', 'Duster', '9/19/2017', 'D13-306'),
('STR 9378', 'Skoda', 'N/A', 'N/A', 'D14-025'),
('F6 Y886', 'Skoda', 'Superb', '12/14/2018', 'D14-16'),
('YR3 67', 'Vauxhall', 'Corsa-e', '6/27/2019', 'D14-V17'),
('DYR 87', 'Toyota', 'Corolla', '3/26/2016', 'L231-47'),
('SWT 9930', 'Dacia', 'Duster', '2/15/2018', 'L231-05'),
('D89 Y6', 'Alfa Romeo', 'Alfasud', '9/2/2016', 'D17-945'),
('Y4 T87', 'Subaru', 'Impreza', '11/5/2017', 'D17-043'),
('JEZ 7719', 'Dacia', 'N/A', 'N/A', 'R180-61'),
('MEW 783', 'Ford', 'Focus', '9/19/2017', 'R180-32'),
('JEA 991', 'Volvo', 'V70', '10/13/2018', 'D17-R14'),
('B56 Y34', 'Vauxhall', 'Astra', '7/22/2017', 'L231-44'),
('FET 6821', 'Nissan', 'Qashqai Visia', '9/13/2018', 'D14-37'),
('B82 T56', 'Skoda', 'Superb', '10/19/2017', 'D14-V77'),
('CEZ 563', 'Volkswagen', 'Golf', 'N/A', 'D13-R71');


EXEC GetCar;


INSERT INTO SERVICE(service_id, drop_off_date, drop_off_time, description_of_work, date_of_next_service, car_milage, registration_number)
VALUES
('S2006-101','6/17/2020','8:30:00','MOT check-up','6/21/2021',45461,'BJI 111'),
('S2006-101','6/17/2020','8:30:00','MOT check-up','6/21/2021',45461,'BJI 111'),
('S2006-102','6/17/2020','14:30:00','MOT check-up','6/20/2021',75712,'AF56 WWJ'),
('S2006-102','6/17/2020','14:30:00','MOT check-up','6/20/2021',75712,'AF56 WWJ'),
('S2006-103','6/17/2020','8:00:00','Other - Wheel bearing - front passengers side','6/18/2021',49904,'LV59 OTP'),
('S2006-103','6/17/2020','8:00:00','Other - Wheel bearing - front passengers side','6/18/2021',49904,'LV59 OTP'),
('S2006-103','6/17/2020','8:00:00','Other - Wheel bearing - front passengers side','6/18/2021',49904,'LV59 OTP'),
('S2006-104','6/17/2020','7:30:00','Other - Not going into third gear. All other gears are okay.','6/21/2021',135312,'SEZ 5629'),
('S2006-104','6/17/2020','7:30:00','Other - Not going into third gear. All other gears are okay.','6/21/2021',135312,'SEZ 5629'),
('S2006-104','6/17/2020','7:30:00','Other - Not going into third gear. All other gears are okay.','6/21/2021',135312,'SEZ 5629'),
('S2006-105','6/17/2020','8:15:00','Annual service','6/19/2021',31446,'MEZ 8086'),
('S2006-105','6/17/2020','8:15:00','Annual service','6/19/2021',31446,'MEZ 8086'),
('S2006-106','6/18/2020','16:30:00','Other - Rattle in the front suspension','6/21/2021',21043,'GRZ 6511'),
('S2006-106','6/18/2020','16:30:00','Other - Rattle in the front suspension','6/21/2021',21043,'GRZ 6511'),
('S2006-107','6/18/2020','8:30:00','MOT check-up','6/18/2021',142958,'DCZ 1844'),
('S2006-107','6/18/2020','8:30:00','MOT check-up','6/18/2021',142958,'DCZ 1844'),
('S2006-108','6/18/2020','8:00:00','MOT check-up','6/19/2021',25077,'VIM 8955'),
('S2006-108','6/18/2020','8:00:00','MOT check-up','6/19/2021',25077,'VIM 8955'),
('S2006-109','6/19/2020','8:30:00','Other - Oil leak - looks major','6/21/2021',85602,'OEZ 1872'),
('S2006-109','6/19/2020','8:30:00','Other - Oil leak - looks major','6/21/2021',85602,'OEZ 1872'),
('S2006-109','6/19/2020','8:30:00','Other - Oil leak - looks major','6/21/2021',85602,'OEZ 1872'),
('S2006-110','6/19/2020','8:45:00','Other - Loses power going up hills. Can not go over 50 mph','6/21/2021',9362,'D268 YCF'),
('S2006-110','6/19/2020','8:45:00','Other - Loses power going up hills. Can not go over 50 mph','6/21/2021',9362,'D268 YCF'),
('S2006-110','6/19/2020','8:45:00','Other - Loses power going up hills. Can not go over 50 mph','6/21/2021',9362,'D268 YCF'),
('S2006-111','6/19/2020','8:30:00','Other - Air conditioning not working','6/19/2021',5903,'CJ16 WED'),
('S2006-112','6/19/2020','8:30:00','Other - Grinding noise from the brakes and whirring noise from the front.','6/23/2021',34943,'W85 TTF'),
('S2006-112','6/19/2020','8:30:00','Other - Grinding noise from the brakes and whirring noise from the front.','6/23/2021',34943,'W85 TTF'),
('S2006-112','6/19/2020','8:30:00','Other - Grinding noise from the brakes and whirring noise from the front.','6/23/2021',34943,'W85 TTF'),
('S2006-113','6/19/2020','8:30:00','Annual service','6/21/2021',15033,'LLZ 9362'),
('S2006-113','6/19/2020','8:30:00','Annual service','6/21/2021',15033,'LLZ 9362'),
('S2006-114','6/20/2020','16:45:00','Other - high pitched whistling noise coming from the front.','6/21/2021',7034,'WVG 673'),
('S2006-114','6/20/2020','16:45:00','Other - high pitched whistling noise coming from the front.','6/21/2021',7034,'WVG 673'),
('S2006-114','6/20/2020','16:45:00','Other - high pitched whistling noise coming from the front.','6/21/2021',7034,'WVG 673'),
('S2006-115','6/20/2020','8:30:00','Other - Filled with diesel - should have been petrol! Will need collected.','N/A',4766,'R99 YRK'),
('S2006-115','6/20/2020','8:30:00','Other - Filled with diesel - should have been petrol! Will need collected.','N/A',4766,'R99 YRK'),
('S2006-116','6/20/2020','12:30:00','MOT check-up','6/22/2021',21641,'T779 OLI'),
('S2006-116','6/20/2020','12:30:00','MOT check-up','6/22/2021',21641,'T779 OLI'),
('S2006-117','6/20/2020','8:15:00','Other - Front tyres are wearing away on the inside. Wire is showing.','6/20/2021',94006,'BEZ 8826'),
('S2006-117','6/20/2020','8:15:00','Other - Front tyres are wearing away on the inside. Wire is showing.','6/20/2021',94006,'BEZ 8826'),
('S2006-118','6/22/2020','8:30:00','Annual service','6/24/2021',42743,'G5 T77'),
('S2006-118','6/22/2020','8:30:00','Annual service','6/24/2021',42743,'G5 T77'),
('S2006-119','6/22/2020','8:30:00','Other - Same problem as before - worked for a while, but now not going into first or third gear.','6/21/2021',135394,'SEZ 5629'),
('S2006-119','6/22/2020','8:30:00','Other - Same problem as before - worked for a while, but now not going into first or third gear.','6/21/2021',135394,'SEZ 5629'),
('S2006-120','6/22/2020','10:30:00','MOT check-up','6/22/2021',63092,'STR 9378'),
('S2006-120','6/22/2020','10:30:00','MOT check-up','6/22/2021',63092,'STR 9378'),
('S2006-121','6/23/2020','8:30:00','Annual service','6/25/2021',18932,'F6 Y886'),
('S2006-122','6/23/2020','9:00:00','Annual service','6/25/2021',11037,'YR3 67'),
('S2006-123','6/23/2020','16:15:00','MOT check-up','6/23/2021',48841,'DYR 87'),
('S2006-124','6/23/2020','8:30:00','Annual service','6/24/2021',20026,'SWT 9930'),
('S2006-125','6/24/2020','12:15:00','MOT check-up','N/A',31604,'D89 Y6'),
('S2006-126','6/24/2020','8:15:00','Other - front suspension has collapsed.','N/A',36480,'Y4 T87'),
('S2006-127','6/24/2020','8:30:00','MOT check-up','6/24/2021',84629,'JEZ 7719'),
('S2006-128','6/24/2020','8:00:00','Other - Power steering not working. Very hard to turn the steering wheel.','12/9/2020',22030,'MEW 783'),
('S2006-129','6/24/2020','14:30:00','Annual service','6/25/2020',11729,'JEA 991'),
('S2006-130','6/24/2020','8:00:00','Annual service','6/13/2020',51815,'B56 Y34'),
('S2006-131','6/25/2020','7:45:00','Annual service','6/30/2020',18037,'FET 6821'),
('S2006-132','6/25/2020','8:15:00','Other - none of the lights are working','N/A',37104,'B82 T56'),
('S2006-133','6/25/2020','16:30:00','MOT check-up','6/25/2021',71402,'CEZ 563'),
('S2006-134','6/25/2020','8:30:00','Other - Car not starting','6/20/2021',76537,'AF56 WWJ'),
('S2006-135','6/25/2020','14:30:00','Other - Now there are grinding sounds from gearbox!!!','6/21/2021',135576,'SEZ 5629');




EXEC GetService;


INSERT INTO MECHANIC(employee_id, m_name, m_phone_number, grade)
VALUES
('E9274', 'Tim Berners-Lee', '+442890469927', 'Trainee'),
('E1037', 'Edgar F. Codd', '07882751331', 'Mechanic'),
('E7291', 'Tony Hoare', '+44717689275', 'Apprentice'),
('E4470', 'Ada Lovelace', '07811304671', 'Mechanic'),
('E2045', 'Grace Hopper', '+447880496206', 'Apprentice'),
('E0392', 'Edsger Dijkstra', '07751839368', 'Senior Mechanic'),
('E2648', 'Alan Turing', '02890568482', 'Apprentice');

INSERT INTO MECHANIC(employee_id, m_name, m_phone_number, grade)
VALUES
('XXXXX', 'N/A', 'N/A', 'N/A');

EXEC GetMechanic;


INSERT INTO MECHANIC_SERVICE(service_id, employee_id, time_spent_on_service)
VALUES
('S2006-101', 'E9274', '3.15'),
('S2006-101', 'E1037', '0.45'),
('S2006-102', 'E7291', '4.00'),
('S2006-102', 'E4470', '0.30'),
('S2006-103', 'E2045', '3.30'),
('S2006-103', 'E1037', '6.20'),
('S2006-103', 'E0392', '1.10'),
('S2006-104', 'E9274', '2.25'),
('S2006-104', 'E4470', '9.25'),
('S2006-104', 'E1037', '5.15'),
('S2006-105', 'E2045', '4.20'),
('S2006-105', 'E0392', '1.00'),
('S2006-106', 'E9274', '5.20'),
('S2006-106', 'E1037', '3.15'),
('S2006-107', 'E9274', '1.15'),
('S2006-107', 'E1037', '4.35'),
('S2006-108', 'E2648', '3.35'),
('S2006-108', 'E4470', '3.35'),
('S2006-109', 'E7291', '4.25'),
('S2006-109', 'E0392', '6.20'),
('S2006-109', 'E1037', '1.15'),
('S2006-110', 'E2648', '2.15'),
('S2006-110', 'E0392', '10.15'),
('S2006-110', 'E1037', '10.15'),
('S2006-111', 'E2045', '5.00'),
('S2006-112', 'E2045', '1.45'),
('S2006-112', 'E4470', '8.05'),
('S2006-112', 'E0392', '6.35'),
('S2006-113', 'E7291', '3.30'),
('S2006-113', 'E4470', '3.55'),
('S2006-114', 'E7291', '3.15'),
('S2006-114', 'E4470', '3.20'),
('S2006-114', 'E1037', '2.15'),
('S2006-115', 'E9274', '5.35'),
('S2006-115', 'E1037', '5.35'),
('S2006-116', 'E2045', '3.45'),
('S2006-116', 'E1037', '4.15'),
('S2006-117', 'E7291', '1.15'),
('S2006-117', 'E4470', '2.35'),
('S2006-118', 'E9274', '3.20'),
('S2006-118', 'E0392', '0.50'),
('S2006-119', 'E9274', '2.35'),
('S2006-119', 'E1037', '4.40'),
('S2006-120', 'E2648', '3.30'),
('S2006-120', 'E4470', '2.50'),
('S2006-121', 'E2045', '0.00'),
('S2006-122', 'E7291', '0.00'),
('S2006-123', 'E2648', '0.00'),
('S2006-124', 'E9274', '0.00'),
('S2006-125', 'E2648', '0.00'),
('S2006-126', 'XXXXX', '0.00'),
('S2006-127', 'E7291', '0.00'),
('S2006-128', 'XXXXX', '0.00'),
('S2006-129', 'E2045', '0.00'),
('S2006-130', 'E9274', '0.00'),
('S2006-131', 'E2648', '0.00'),
('S2006-132', 'XXXXX', '0.00'),
('S2006-133', 'E7291', '0.00'),
('S2006-134', 'XXXXX', '0.00'),
('S2006-135', 'XXXXX', '0.00');


EXEC GetMechanicService;
