CREATE DATABASE customerData;
USE customerData;
CREATE TABLE customerData(CustomerId int, CustomerName varchar(20), ContactNo bigint, Address varchar(30),City varchar(15) , PostalCode smallInt, country varchar(20));

INSERT INTO customerData values(0001,'Ankanshi',9998887776,'#33 Church Street','Ara',5600,'Albania');
INSERT INTO customerData values(0002,'Balanna',8887776665,'Baldwin Colony', 'Bettiah', 6670, 'Angola');
INSERT INTO customerData values(0003, 'Cristopher', 0001112224,'#69 Argi','katihar',7728, 'Bahrain' );
INSERT INTO customerData values(0004, 'Sommer', 0119228337,'#98 Adams','Munger', 2951,'Kiribati');
INSERT INTO customerData values(0005, 'latimer', 2387654368, 'Crowther Way', 'Pusa', 9240, 'Laos');
INSERT INTO customerData values(0006, 'Cramer', 1234567890, 'Johnstow road', 'Siwan', 0033, 'Morocco');
INSERT INTO customerData values(0007, 'Philips', 9218347017, 'Maublestr','Bhilai', 9956, 'Nauru');
INSERT INTO customerData values(0008, 'Renate', 8762340981, 'Boloivar', 'Jadalpur', 2001, 'Palau');
INSERT INTO customerData values(0009, 'Rovelli',9218347067, 'Heer Strt', 'Diu', 9003, 'Samoa' );
INSERT INTO customerData values(0010, 'Feure', 9283746518, 'Bering St', 'Silvassa',0212, 'Senegal');
INSERT INTO customerData values(0011, 'Bertrand', 8765678767, 'Geilswag', 'Bharuch', 0910, 'Slovakia');
INSERT INTO customerData values(0012, 'Pipps', 0908786543, 'Milton Dr', 'Junagadh', 2327, 'Tunisia');
INSERT INTO customerData values(0013, 'Holz', 98778943342, 'Gran Via', 'Kheda', 6776, 'Tonga');
INSERT INTO customerData values(0014, 'Pavarotti', 0192837465,'25, Lauriston', 'Morbi', 8218, 'Tuvalu');
INSERT INTO customerData values(0015, 'Cartrain', 91918282734, 'DaVinci Str', 'Palanpur', 8778, 'Vanuatu');
INSERT INTO customerData values(0016,'Ibsen', 8817726635, 'Torikatu', 'Valsad', 9009, 'Togo');
INSERT INTO customerData values(0017, 'Isbella',9911183375, 'Keskuskatu', 'Hisar', 0700, 'Yemen');
INSERT INTO customerData values(0018, 'Victor',0070020035, 'Wadhurst Rd', 'Eluru', 0200, 'Seychelles');
INSERT INTO customerData values(0019, 'Logan',7654326789, 'Suffolk Ln','Tezpur', 0099, 'Niger');
INSERT INTO customerData values(0020, 'Johnattan', 6543217890, 'Grenzacherweg', 'Tinsukia', 8239, 'Mozambique'); 

SELECT * FROM customerData;

SELECT * FROM customerData WHERE City='Pusa';	/*Select from perticular data in the table*/

SELECT* FROM customerData WHERE CustomerId=2 AND City = 'Bettiah' AND country='Angola';
/*Slect particular data using And operator*/

SELECT * FROM customerData WHERE CustomerId=13 OR   CustomerName='Logan';
/*Select particular data using or operator where result will be fetched if either condition is true*/

SELECT * FROM customerData WHERE CustomerId IN(12,40,3);

SELECT*FROM customerData WHERE CustomerName NOT In ('Logan','Balanna','Victor');

SELECT*FROM customerData where CustomerId between 12 and 18;

SELECT*FROM customerData where CustomerName between 'A' and 'P';