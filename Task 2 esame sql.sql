#creo il database ToysGroup
create database ToysGroup;

#creo la tabella ProductCategory con la chiave primaria 
create table ProductCategory(
ProductCategory_ID int auto_increment primary key,
CategoryNameProduct varchar(100) not null,
SubCategoryNameProduct varchar(100)
);

#creo la tabella Product con chiave primaria e chiave esterna
create table Product(
Product_ID int auto_increment primary key,
ProductName varchar(100) not null,
ProductCategory_ID int,
foreign key (ProductCategory_ID) references ProductCategory(ProductCategory_ID)
);

#creo la tabella Region con chiave primaria
create table Region(
Region_ID int auto_increment primary KEY,
RegionName varchar(100)not null
);
 
 #creo la tabella State con chiave primaria
 create table State(
 State_ID int auto_increment primary key,
 StateName varchar(100) not null,
 region_ID int,
 foreign key (Region_ID) references Region(Region_ID)
 );

#Creo la tabella Sales con chiave primaria e due chiavi esterne
create table Sales(
Sales_ID int auto_increment primary key,
SalesDate date not null,
Quantity int not null,
TotalPrice decimal(10,2) not null,
Product_ID INT,
Region_ID INT,
foreign key(Product_ID) references Product(Product_ID),
foreign key(Region_ID) references Region(Region_ID)
);

#inserisco i valori nella tabella ProductCategory
insert into productcategory (Productcategory_ID,CategoryNameProduct,SubCategoryNameProduct) VALUES
(1,'Action Figures','Superheroes'), 
(2,'Puzzle','3D Puzzle'), 
(3,'Peluches','Teddybären');

#inserisco i valori nella tabella Product
insert into product ( Product_ID,Productcategory_ID,ProductName) VALUES
(1,1,'Spider-Man Action Figure'),
(2,2, 'Super Mario Puzzle'),
(3,3, 'Disney Teddybear');

#inserisco i valori nella tabella Region
insert into Region (Region_ID,RegionName)values
(1, 'Lombardia'),
(2, 'Lazio'),
(3, 'Campania');

#inserisco i valori nella tabella State
insert into State(State_ID,Region_ID,StateName)values
(1, 1, 'Stato A in Lombardia'),
(2, 1, 'Stato B in Lombardia'),
(3, 2, 'Stato A in Lazio'),
(4, 2, 'Stato B in Lazio'),
(5, 3, 'Stato A in Campania');

#inserisco i valori nella tabella Sales
insert into sales(Sales_ID,SalesDate,Quantity,TotalPrice ,Product_ID ,Region_ID)VALUES
(1, '2024-01-15', 3, 45.00, 1, 1),
(2, '2024-01-16', 2, 30.00, 2, 2),
(3, '2024-01-17', 5, 75.00, 3, 3);




