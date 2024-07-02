\sql

\connect root@localhost:3306

create database users;

use users;

create database IF NOT EXISTS users;

delete from Salesman_master where city="Mumbai";

create table Students (FirstName varchar(20), lastname varchar(20), Age int, City varchar(10), Maths int, English int, Gujarati int);

desc Students;

insert into Students (FirstName,lastname,Age,City,Maths,English,Gujarati) values
("Hit","Patel",21,"Junagadh",96,86,86),
("Dev","Bharadva",20,"Junagadh",96,64,60),
("jagdish","Shiyal",24,"Mahuva",90,80,60),
("Harshit","Kakadiya",24,"Godhara",56,80,56),
("Harmi","Sutariya",18,"Godhara",90,54,56),
("Prins","Bodar",18,"Mahuva",70,54,86),
("Vivek","Patil",21,"Pune",70,86,86),
("Muno","Savaliya",16,"Pune",76,74,56),
("Tejasvi","Gelani",18,"Surat",56,40,90),
("Tirupati","Patel",16,"Surat",56,54,60);

select * from Students;

-- AND
select * from Students where Age=16 AND English>34;

select * from Students where Age<=21 AND Gujarati<=56;

select * from Students where Maths!=96 AND City="Surat";

-- OR
select * from Students where Age=21 OR City="Junagadh";

select * from Students where Age>=21 OR City="Junagadh";

select * from Students where Maths!=96 OR City="Mahuva";

--BETWEEN
select * from Students where Age BETWEEN 14 AND 22;

select * from Students where Gujarati BETWEEN 55 AND 80;

--In
select * from Students where City IN ("Pune","Junagadh");

select * from Students where Maths IN (56,96);

--Not In
select * from Students where City NOT IN ("Pune","Junagadh");

select * from Students where Maths NOT IN (56,96);

--Like
select * from Students where FirstName LIKE "H%";

select * from Students where FirstName LIKE "T%";

select * from Students where FirstName LIKE "%T";

--Limit
select * from Students limit 3;

select * from Students limit 3,3;

--Asc 
select * from Students order by Firstname asc;

select * from Students order by City asc;

--Desc
select * from Students order by Firstname desc;

select * from Students order by City desc;

--Max
select max(Gujarati) from students;

select max(Age) from Students;

--Min
select min(Gujarati) from students;

select min(Age) from Students;

--Sum
select sum(Gujarati) from students;