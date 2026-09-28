The README will have a brief description of each SQL files intended function.

Business Process_Queries: This contains five business processes that was needed for the database. Below is a brief description of each of them.
Process 1: An editable dataset to insert a new row into the Service table.

Process 2: Lists mechanics who have previously serviced a given vehicle and have no jobs booked on the proposed new drop-off date.

Process 3: Shows the total number of hours worked within a certain date range.

Process 4: Searches the Mechanic table and shows the date of each mechanic's next job.

Process 5: Adds a row into the Mechanic table to add a mechanic's availability. For example, if they're sick, available, on holiday, etc.


Data_Insertion: This was used to insert all the data provided to us into each table in bulk. Code is also present to check the tables to see if the data was inserted correctly.

Stored_Procedures: This contains lots of simple SQL code in order to make the average operations of the database more efficient (e.g. "load a table", ""insert values into a table", etc.).

Table_Creation_Queries: This stores the SQL code of which the tables were made from.

Use_Procedures: This file exists purely to streamline usage of the stored procedures found in the Stored_Procedures file. It contains all of the executable lines that Stored_Procedures do not.
