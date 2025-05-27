select* from dimproduct;

select  ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag from dimproduct;

select  ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag as FGF from dimproduct;

select  ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag as FGF from dimproduct where  FinishedGoodsFlag =1;

select  ProductKey, ProductAlternateKey as Model, EnglishProductName, StandardCost, ListPrice as FGF from dimproduct where ProductAlternateKey like "FR%" or  ProductAlternateKey like "BK%";

select  ProductKey, ProductAlternateKey as Model, EnglishProductName, StandardCost, ListPrice, ListPrice-StandardCost as Markup from dimproduct where ProductAlternateKey like "FR%" or  ProductAlternateKey like "BK%";

select  ProductKey, ProductAlternateKey as Model, EnglishProductName, StandardCost, ListPrice, ListPrice-StandardCost as Markup from dimproduct where (ListPrice >1000 and ListPrice <2000) and (ProductAlternateKey like "FR%" or  ProductAlternateKey like "BK%") and (FinishedGoodsFlag =1);

select * from dimemployee;

select * from dimemployee where  SalespersonFlag=1;

select * from factresellersales;

select * from factresellersales where (OrderDate> "2020-01-01") and ( ProductKey in ( 597, 598, 477, 214));

select SalesOrderNumber, OrderDate, ProductKey, OrderQuantity, UnitPrice, TotalProductCost, SalesAmount, SalesAmount - TotalProductCost as Markup from factresellersales where (OrderDate > '2020-01-01') AND (ProductKey in (597, 598, 477, 214));

