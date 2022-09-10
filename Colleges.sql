CREATE DATABASE Colleges;
USE colleges;

CREATE TABLE collegeList(collegeId int, collegeName varchar(30),Address varchar(45),CollegeType varchar(30),Board varchar(40),branches varchar(30), facultyAvailable int);

INSERT INTO collegeList values(1,'AIT','Hesaraghatta Main Road','Co-Head','VTU','8 Branches',28);
INSERT INTO collegeList values(2,'BIT','KR Market','Co-Head','VTU','14 Branches',53);
INSERT INTO collegeList values(3,'KIT','Tiptur','Boys','Autonomous','6 Branches',16);
INSERT INTO collegeList values(4,'SIT','Tumkur','Girls','Autonomous','4Branches',18);
INSERT INTO collegeList values(5,'VIT','Doddaballapur','Co-head','VTU','7 Branches',12);
INSERT INTO collegeList values(6,'MIT','Doddasandra','Co-Head','Autonomous','5 Branches',8);
INSERT INTO collegeList values(7,'RIT','Ramanagara','Boys','VTU','12 Branches',13);
INSERT INTO collegeList values(8,'DIT','Dharwad','Co-Head','VTU','6 Branches',20);
INSERT INTO collegeList values(9,'HIT','Hubbali','Co-Head','Autonomous','8 Branches',10);
INSERT INTO collegeList values(10,'DIT','Chitra Durga','Co-Head','VTU','12 Branches',22);

SELECT* FROM collegeList;