CREATE DATABASE Transport;
USE Transport;

create table transportData(transportId int, transportType varchar(30), bookingType varchar(20), noOfPassengers smallint, daysOftravel varchar(35), price  float);
INSERT INTO transportData values(010, "Bus","Offline",62,'6D&5N', 9999.99);
INSERT INTO transportData values(021, "Car","Offline",7,'4D&3N', 5989.99);
INSERT INTO transportData values(034, "AirBus","Online",436,'15D&14N', 49999.99);
INSERT INTO transportData values(048, "Train","Online",38,'11D&10N', 14599.99);
INSERT INTO transportData values(056, "2 Wheeler","Offline",2,'2D&1N', 1599.99);

desc dataoftransport; /*describe the table data i.e data types added to columns*/
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
SELECT*FROM transport.dataoftransport;

/*group by to group similar type of data in particular column */
SELECT typeofpackage,COUNT(*) as No_of_Rows from dataoftransport GROUP BY  typeofpackage;

SELECT SUM(noOfPassengers) as totalPassenegrs from dataoftransport;

SELECT MAX(noOfPassengers) as maxPass from dataoftransport;
SELECT MIN(price) as minPrice from dataoftransport;
SELECT AVG(price) as averageprice from dataoftransport;

SELECT*FROM transport.dataoftransport;

/*LIKE KEYWORD - used for match the  pattern */
SELECT * FROM dataoftransport where transportType LIKE '%B%';

/*group by*/

SELECT TypeOfPackage,count(*) from dataoftransport group by TypeOfPackage;	/*group by used to group particular */

select distinct (TypeOfPackage) from dataoftransport;	/*to avoid the duplicate values*/
/*having -----always used after group by and always used with group by
where always used before group by as given below*/

/*SELECT DISTINCT FROM WHERE GROUP BY HAVING ORDER BY; */

SELECT*FROM transport.dataoftransport;
select typeofpackage, sum(price) as sum from dataoftransport group by typeofpackage HAVING sum > 4500;

/*INSTR AND SUBSTR are character function*/

/*instring-to find position or index of the character in a string*/
SELECT INSTR('XWORKZODC','r') AS position;/*it is not case sensitive | in case of duplicates  it will consider the first occurance*/

/*Sub string -to print  */
SELECT SUBSTR('XWORKZODC',3,4) as substring;/*3 indicates the index value of first character | 4 indicates the number of charatcers to be printed from index of 3*/


