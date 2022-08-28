CREATE DATABASE Transport;
USE Transport;

create table transportData(transportId int, transportType varchar(30), bookingType varchar(20), noOfPassengers smallint, daysOftravel varchar(35), price  float);

INSERT INTO transportData values(010, "Bus","Offline",62,'6D&5N', 9999.99);
INSERT INTO transportData values(021, "Car","Offline",7,'4D&3N', 5989.99);
INSERT INTO transportData values(034, "AirBus","Online",436,'15D&14N', 49999.99);
INSERT INTO transportData values(048, "Train","Online",38,'11D&10N', 14599.99);
INSERT INTO transportData values(056, "2 Wheeler","Offline",2,'2D&1N', 1599.99);

Select * FROM transportData;

ALTER TABLE transport.transportdata ADD packageType int;	/*Add column for existing table*/
ALTER TABLE transport.transportdata MODIFY COLUMN packageType varchar(25); /*Modify data type for existing column*/

UPDATE transport.transportdata SET packageType ='Silver' WHERE transportId = 010; /*Update column data for existing column*/
set sql_safe_updates =0;
UPDATE transport.transportdata SET packageType ='Gold' WHERE transportId = 021;
UPDATE transport.transportdata SET packageType ='Elite' WHERE transportId = 034;
UPDATE transport.transportdata SET packageType ='Bronze' WHERE transportId = 048;
UPDATE transport.transportdata SET packageType ='Platinum' WHERE transportId = 056;

ALTER TABLE  transport.transportdata RENAME COLUMN packageType to TypeOfPackage; /* To Rename Coumn name*/
Select * FROM transportData order by transportId;	/*Re-arrage by id*/

INSERT INTO transport.transportdata VALUES(064,"TempoTraveller",'offline',13,'7D&6N',3499.99,'Economy');
INSERT INTO transportData values(073, "MiniBus","Offline",28,'3D&3N', 4199.99,"ClubClass");

DELETE FROM transport.transportdata WHERE noOfPassengers = '2';

INSERT INTO transportData values(056, "2 Wheeler","Offline",2,'2D&1N', 1599.99,'Platinum');

ALTER TABLE transport.transportdata RENAME to dataOfTransport;

Select * FROM transport.dataoftransport order by transportId;	/*Re-arrage by id*/

SELECT * FROM transport.dataoftransport WHERE  transportid=64;

SELECT * FROM transport.dataoftransport WHERE typeOfpackage = 'Elite';

INSERT INTO transport.dataoftransport values(076, "Car","Online",8,'6D&7N', 4699.89,'Gold');

INSERT INTO transport.dataoftransport values(082, "AirBus","Online",374,'4D&5N', 13999.99,'ClubClass');

INSERT INTO transport.dataoftransport values(097, "MaxiBus","Offline",68,'3D&4N', 8799.59,'Platinum');

Select * FROM transport.dataoftransport order by transportId;

SELECT * FROM transport.dataoftransport WHERE transportType='MiniBus';

SELECT * FROM transport.dataoftransport WHERE transportType='MiniBus' AND noOfPassengers=28;/*Select particular statement by using AND Operator*/

SELECT * FROM transport.dataoftransport WHERE transportID=73 OR daysOfTravel='2D&1N'; /*OR Operator*/

SELECT * FROM transport.dataoftransport WHERE transportId IN(76,73,48);	/*In Opearator*/

SELECT * FROM transport.dataoftransport WHERE transportId Not IN(76,73,48);	/*NOT IN Opearator*/

SELECT * FROM transport.dataoftransport WHERE transportId BETWEEN 10 AND 48;

SELECT * FROM transport.dataoftransport WHERE transportType='MiniBus' AND noOfPassengers=28 OR (bookingType='Online');



/*
DDL Commands in SQL
DDL is an abbreviation of Data Definition Language.

The DDL Commands in Structured Query Language are used to create and modify the schema of the database and its objects.
 The commands of Data Definition Language deal with how the data should exist in the database.
 
 Following are the five DDL commands in SQL:
1.CREATE Command
2.DROP Command
3.ALTER Command
4.TRUNCATE Command
5.RENAME Command
----------------------------------------------------->
DML Commands in SQL	-	DML is an abbreviation of Data Manipulation Language.

The DML commands in Structured Query Language change the data present in the SQL database. 
We can easily access, store, modify, update and delete the existing records from the database using DML commands.

Following are the four main DML commands in SQL:
1.SELECT Command
2.INSERT Command
3.UPDATE Command
4.DELETE Command

------------------------------------------------------>
SQL WHERE - A WHERE clause in SQL is a data manipulation language statement.

WHERE clauses are not mandatory clauses of SQL DML statements. But it can be used to limit the number of rows affected 
	by a SQL DML statement or returned by a query.

Actually. it filters the records. It returns only those queries which fulfill the specific conditions.

WHERE clause is used in SELECT, UPDATE, DELETE statement etc.

WHERE clause uses some conditional selection-
=	equal
>	greater than
<	less than
>=	greater than or equal
<=	less than or equal
< >	not equal to

-------------------------------------------------------->

SQL AND - The SQL AND condition is used in SQL query to create two or more conditions to be met.
It is used in SQL SELECT, INSERT, UPDATE and DELETE
Let's see the syntax for SQL AND:
SELECT columns FROM tables WHERE condition 1 AND condition 2;
The SQL AND condition require that both conditions should be met.
The SQL AND condition also can be used to join multiple tables in a SQL statement.

Example:
SELECT column1, column 2, ... column n  
FROM    table_name  
WHERE [conditions]  
--------------------------------------------------------->

SQL OR
The SQL OR condition is used in SQL query to create a SQL statement where records are returned when any one condition met. 
It can be used in a SELECT statement, INSERT statement, UPDATE statement or DELETE statement.

Let's see the syntax for the OR condition:
SELECT columns FROM tables WHERE condition 1 OR condition 2; 

--------------------------------------------------------->
SQL WITH CLAUSE
The SQL WITH clause is used to provide a sub-query block which can be referenced in several places within the main SQL query. 
It was introduced by oracle in oracle 9i release2 database.

Syntax for the SQL WITH clause -

This syntax is for SQL WITH clause using a single sub-query alias.

WITH <alias_name> AS (sql_sub-query_statement)  
SELECT column_list FROM <alias_name> [table name]  
[WHERE <join_condition>]  

------------------------------------------------------------->
SQL SELECT AS
SQL 'AS' is used to assign a new name temporarily to a table column or even a table.
It makes an easy presentation of query results and allows the developer to label results 
more accurately without permanently renaming table columns or even the table itself.

Let's see the syntax of select as:
SELECT Column_Name1 AS New_Column_Name, Column_Name2  As New_Column_Name FROM Tabl

---------------------------------------------------------------->
*/
