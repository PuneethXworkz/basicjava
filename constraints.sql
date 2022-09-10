create database constraints;

use constraints;

desc student; /*describe the table data i.e data types added to columns*/

CREATE TABLE student(id int not null unique, name varchar(30) unique, age int check(age>=18),location varchar(25) default 'Bangalore');

SELECT * FROM student; 
INSERT INTO student values(1,'Rahu',18,'Mysore');
INSERT INTO student values(2,'Viha',19,'Gadag');
INSERT INTO student values(3,'Kavi',22,'Ladakh');
INSERT INTO student values(4,'Janu',25,'Manali');


drop table student;
