\sql

\connect root@localhost:3306;

create database user;

use user;

create table Client_master(ClientNo varchar(6),Name varchar(20),Address1 varchar(30),Address2 varchar(30),City varchar(8),Pincode int(8),State varchar(15),BalDue int(10));

desc Client_master;

insert into Client_master(ClientNo,Name,Address1,Address2,City,Pincode,State,BalDue) values ("C00001","Ivan Bayross","A/14","Worli","Mumbai",400054,"Maharashtra",15000),
("C00002","Mamta Mazmudar","A/14","Worli","Madras",780001,"TamilNadu",0),
("C00003","Chhaya Banker","A/14","Worli","Mumbai",400057,"Maharashtra",5000),
("C00004","Ashwin Joshi","A/14","Worli","Banglore",560001,"Karnataka",0),
("C00005","Hansel Colaco","A/14","Worli","Mumbai",400060,"Maharashtra",2000),
("C00006","Deepak Sharma","A/14","Worli","Manglore",560050,"Karnataka",0);

select * from Client_master;

create table Product_master(ProductNo varchar(6),Description varchar(15),ProfitPercent FLOAT(4,2),UnitMeasure varchar(10),QtyOnHand int(8),RecorderLVL int(8),SellPrice FLOAT(8,2),CostPrice FLOAT(8,2));

desc Product_master;

insert into Product_master(ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,RecorderLVL,SellPrice,CostPrice) values ("P00001","T-Shirts",5,"Piece",200,50,350,250),
("P0345","Shirts",6,"Piece",150,50,500,350),
("P06734","Cotton Jeans",5,"Piece",100,20,600,450),
("P07865","Jeans",5,"Piece",100,20,750,500),
("P07868","Trousers",2,"Piece",150,50,850,550),
("P07885","PullOvers",2.5,"Piece",80,30,700,450),
("P07975","DenimShirts",4,"Piece",100,40,350,250),
("P07975","LycraTops",5,"Piece",70,30,300,175),
("P08865","Skirts",5,"Piece",75,30,450,300);

select * from Product_master;

create table Salesman_master (SalesmanNo varchar(6),SalesmanName varchar(20),Address1 varchar(30),Address2 varchar(30),City varchar(20),Pincode int(8),State varchar(20),SalAmt FLOAT(8,2),TGTToGET FLOAT(6,2),YTDSales Float(6,2),Remarks varchar(60));

insert into Salesman_master (SalesmanNo,SalesmanName,Address1,Address2,City,Pincode,State,SalAmt,TGTToGET,YTDSales,Remarks) values ("S00001","Aman","A/14","Worli","Mumbai",400002,"Maharashtra",3000,100,50,"Good"),
("S00002","Omkar","65","Nariman","Mumbai",400001,"Maharashtra",3000,200,100,"Good"),
("S00003","Raj","P-7","Bandra","Mumbai",400032,"Maharashtra",3000,200,100,"Good"),
("S00001","Ashish","A/5","Juhu","Mumbai",400044,"Maharashtra",3000,200,150,"Good");

select * from Salesman_master;

Findout Name of Clients
select Name from Client_master; 

Retrieve the entire content of the Client_master table
select * from Client_master;

Retrieve the list of names, city and the state of all the Clients
select Name,City,State from Client_master;

List the various products available from the Product_master table
select Description from Product_master where QtyOnHand>0;

List of all clients who are located in Mumbai
select Name from Client_master where City="Mumbai";

Find the names of Salesman who have salary equal to Rs.3000
select SalesmanName from Salesman_master where SalAmt=3000;

Change the city of ClientNo'C00005' to 'Banglore'
update Client_master set City="Banglore" where ClientNo="C00005";

Change the BalDue of ClientNo'C00001' to Rs.1000
update Client_master set BalDue=1000 where ClientNo="C00001";

Change the Costprice of 'Trousers' to Rs.950.00
update Product_master set CostPrice=950 where Description="Trousers";

Change the City of Salesman to Pune
update Salesman_master set City="Pune";