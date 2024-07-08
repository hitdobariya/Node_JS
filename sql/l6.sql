create table client_master1(
ClientNo varchar(6) primary key,
Name varchar(20) not null,
Address1 varchar(30),
Address2 varchar(30),
City varchar(15),
Pincode int(8),
State varchar(15),
Baldue float(10,2)
);

drop table client_master;

desc client_master1;

insert into Client_master1 
(ClientNo , Name , Address1 , Address2 , City , Pincode , State , BalDue)
values
("C00001" , "Ivan Byross" , "pune/69" , "surat/69", "Mumbai" , 400054 , "Maharastra" , 15000),
("C00002" , "Mamta Muzumdar" , "Ahemdabad/69" , "Ahemdabad/69", "Madras" , 780001 , "Tamil Nadu" , 0),
("C00003" , "Chhaya Bankar" , "Mumbai/69" , "Bombe/69", "Mumbai" , 400057 , "Maharastra" , 500),
("C00004" , "Ashwini Joshi" , "Bangalore/69" , "Bangalore/69", "Banglore" , 560001 , "Karnataka" , 0),
("C00005" , "Hansel Calaco" , "A/69" , "A/69", "MUmbai" , 400060 , "maharastra" , 2000),
("C00006" , "Deepak Sharma" , "b/69" , "B/69", "Manglore" , 560050 , "Karnataka" , 0);

select * from Client_master1;

drop table client_master1;

create table product_master1(
ProductNo varchar(6) primary key,
Description varchar(15) not null,
ProfitPercent float (4.2),
UnitMeasure varchar(10) not null,
OtyOnHand int(8),
Reorderlvl int(8),
Seelprice float(8.2),
Costprice float(8.2) 
);

desc product_master1;

insert into Product_master1 
 -- (ProductNo , Description , Profitpercent, UnitMeasure , QtyOnHand , ReorderLvl , Sellprice , CostPrice )
values
("P00001" , "T-Shirt" , 5 , "Piece" , 200 , 50 ,350 ,250),
("P0345" , "Shirt" , 6 , "Piece" , 150 , 50 ,500 ,350),
("P06734" , "Cotton Jeans" , 5 , "Piece" , 100 , 20 ,600 ,450),
("P07865" , "Jeans" , 5 , "Piece" , 100 , 20 ,750 ,500),
("P07868" , "T-Shirt" , 5 , "Piece" , 200 , 50 ,350 ,250),
("P07885" , "Pull Overs" , 2 , "Piece" , 80 , 30 ,700 ,450),
("P07965" , "Denim Shirt" , 2.5 , "Piece" , 100 , 40 ,350 ,250),
("P07985" , "Pull Overs" , 4 , "Piece" , 80 , 30 ,700 ,450),
("P07975" , "Lycra Tops" , 5 , "Piece" , 70 , 30 ,300 ,175),
("P08865" , "Skirts" , 5 , "Piece" , 75 , 30 ,450 ,300);

select * from Product_master1;

create table salesman_master1(
SalesmanNo varchar(6) primary key,
SalesmanName varchar(20) not null,
Address1 varchar(30) not null,
Address2 varchar(30),
City varchar(20),
Pincode int(8),
State varchar(20),
Salamt float(8 , 2) not null,
Tgttoget float(8, 2) not null,
Ytdssales float(6,2) not null,
Remarks varchar(60) 
);

insert into Salesman_master1
values
("S00001" , "Aman" , "A/14" , "Worli" , "MUmbai" , 400002 , "maharastra" , 3000 , 100 , 50 , "Good"),
("S00002" , "Omkar" , "65" , "Nariman" , "MUmbai" , 400001 , "maharastra" , 3000 , 100 , 100 , "Good"),
("S00003" , "Raj" , "65" , "Bandra" , "MUmbai" , 400032 , "maharastra" , 3000 , 200 , 100 , "Good"),
("S00004" , "Ashis" , "A/5" , "juhu" , "MUmbai" , 400044 , "maharastra" , 3500 , 200 , 200 , "Good");

select * from Salesman_master1;

desc salesman_master1;

drop table salesman_master1;

create table sales_order(
OrderNo varchar(6) primary key,
ClientNumber varchar(6) ,
OrderDate date not null,
Delyaddr varchar(25),
SalesmanNo varchar(6),
Delytype char(1) default 'F',
Billyn char(1),
Delydate date,
OrderStatus varchar(10),
foreign key (ClientNumber) references client_master1 (ClientNo),
foreign key (SalesmanNo) references salesman_master1 (salesmanNo)
);

insert into sales_order
values
("O19001" , "C00001" ,"2004-6-12", "mahuva","S00001","F","N" , "2002-7-20", "In Process"),
("O19002" , "C00002" ,"2004-6-25","bhavnagar","S00002","P" ,"N","2002-6-27", "Cancelled"),
("O46865" , "C00003" ,"2004-2-18","surat","S00003","F","Y","2002-2-20","Fulfilled"),
("O19003" , "C00001" ,"2004-4-03","kamrej","S00001","F","Y","2002-4-07","Fulfilled"),
("O46866" , "C00004" ,"2004-5-20","pasodra","S00002","P","N","2002-5-22","Cancelled"),
("O19008" , "C00005" ,"2004-5-24","yogichowk","S00004","F","N","2002-7-26","In Process");

select * from sales_order;

drop table sales_order;

desc sales_order;

-- sales_order_details

create table sales_order_details(
OrderNumber varchar(6),
ProductNumber varchar(6),
Qtyordered int(8),
Qtydisp int(8),
ProductRate float(10 , 2),
foreign key (OrderNumber) references sales_order(OrderNo),
foreign key (ProductNumber) references Product_master1(ProductNo)
);

insert into sales_order_details
values
("O19001" , "P00001" , 4 , 4 , 525),
("O19001" , "P07965" , 2 , 1 , 8400),
("O19001" , "P07885" , 2 , 1 , 5250),
("O19002" , "P00001" , 10 , 0 , 525),
("O46865" , "P07868" , 3 , 3 , 3150),
("O46865" , "P07885" , 3 , 1 , 5250),
("O46865" , "P00001" , 3 , 1 , 1050),
("O19003" , "P0345" , 2 , 2 , 1050),
("O19003" , "P06734" , 1 , 1 , 12000),
("O46866" , "P07975" , 1 , 0 , 8400),
("O46866" , "P07975" , 1 , 0 , 1050),
("O19008" , "P00001" , 10 , 5 , 525),
("O19008" , "P07975" , 5 , 3, 1050);

drop tables sales_order_details;

select * from sales_order_details;

desc sales_order_details;