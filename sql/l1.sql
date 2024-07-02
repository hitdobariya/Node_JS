> enter mysql_query
-- \sql 


> connect mysql
-- \connect root@Localhost:3306 
--admin@123 -password


> show database
-- show databases;  


> create database
-- create database name; 


> enter database
-- use name;   


> delete database
-- drop database name; 


> show table
-- show tables; 


> create table
-- create table table_name(
--    username varchar(value) , 
--    lastname varchar(value) , 
--    gender varchar(6) , 
--    age int , 
--    email varchar(25) , 
--    mobile int(10)
-- ); 


> show table in row and collums
-- describe table_name; 
      or 
-- desc table_name; 


>delete table
--drop table_name;


>update database
--update table_name set fieldname=value where fieldname=value;


>delete data in table
--delete from table_name where fieldname=value;


>AND
--select * from table_name where field_name1=value1 AND fieldname1=value2;


>OR
--select * from table_name where field_name1=value1 OR fieldname1=value2;


>BETWEEN
--select * from table_name where field_name1=value1 BETWEEN fieldname1=value2;


>NOT IN
--select * from table_name where field_name NOT IN ("Value1","Value2");


>IN
--select * from table_name where field_name ("Value1","Value2");


>LIKE
--select * from table_name where field_name LIKE "%Value%";


>Limit
--select * from table_name limit value;
--select * from table_name limit starting_value,value;


>Ascending
--select * from table_name ORDER BY field_name ASC;


>Descending
--select * from table_name ORDER BY field_name DESC;


>Max
--select max(value) from table_name;


>Min
--select min(value) from table_name;