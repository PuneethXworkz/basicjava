Create Database Xworkz;
USE Xworkz;

CREATE TABLE students(id int, name varchar(25));
INSERT INTO students values(12, "xworkz");
select*FROM students;

ALTER TABLE students ADD Address varchar(30);  /*to add a column for already existing table*/

ALTER TABLE Xworkz.students MODIFY COLUMN Address varchar(40);	/*For ALtering data type of existing data type */

UPDATE Xworkz.students SET Address = 'Bangalore' WHERE id = 12;		/*Update address for already existing*/

DELETE FROM students WHERE Address = 'Bangalore'; /*Delete row*/

/*To rename the column name*/
ALTER TABLE Xworkz.students RENAME COLUMN Address  to Location;
INSERT INTO students values(13, "xworkz2",'Hassan');
INSERT INTO students values(14, "xworkz3",'pune');

DELETE FROM students WHERE Location = 'Bangalore';
select*FROM students1 order by id;  /*To print desc or ascen from id */

/*select*FROM students1 order by id desc;*/
INSERT INTO students values(12,'xworkz','Bangalore');
set sql_safe_updates =0; /*to turn of safe updates in sql*/

ALTER TABLE  students RENAME TO xworkz.students1;	/*to rename to table*/
/*add 5 more columns and add the data*/

ALTER TABLE students1 ADD Hometown varchar(25);
ALTER TABLE students1 ADD ContactNo bigint;
ALTER TABLE students1 ADD YearOfPassOut int;
ALTER TABLE students1 ADD Stream varchar(15);

UPDATE Xworkz.students1 SET Hometown = 'Gadag' WHERE id = 12;
UPDATE Xworkz.students1 SET Hometown = 'Batkal' WHERE id = 13;
UPDATE Xworkz.students1 SET Hometown = 'Sirsi' WHERE id = 14;

UPDATE Xworkz.students1 SET ContactNo = '9988776654' WHERE id = 12;
UPDATE Xworkz.students1 SET ContactNo = '5544776629' WHERE id = 13;
UPDATE Xworkz.students1 SET ContactNo = '0192837465' WHERE id = 14;

UPDATE Xworkz.students1 SET YearOfPassOut = '2021' WHERE id = 12;
UPDATE Xworkz.students1 SET YearOfPassOut = '2022' WHERE id = 13;
UPDATE Xworkz.students1 SET YearOfPassOut = '2020' WHERE id = 14;

UPDATE Xworkz.students1 SET Stream = 'Royal Mech' WHERE id = 12;
UPDATE Xworkz.students1 SET Stream = 'Civil' WHERE id = 13;
UPDATE Xworkz.students1 SET Stream = 'Electronics' WHERE id = 14;

SELECT * FROM students1 order by id;		/*Order used to */
INSERT INTO students1 value(15,'xworkz4','Maharashtra','chennai',9898878766,2019,'RoyalMech');

SELECT * FROM students1 where id=12;

select * from students1 where Hometown='Batkal';

