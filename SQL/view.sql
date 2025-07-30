SELECT
    p.productkey,p.englishProductName  AS NomeProdotto,
    sc. englishProductSubcategoryName AS Sottocategoria,
    c.englishProductCategoryName AS Categoria
	FROM DimProduct p
JOIN DimProductSubcategory sc ON p.ProductSubcategoryKey = sc.ProductSubcategoryKey
join dimproductcategory c ON sc.ProductCategoryKey = c.ProductCategoryKey;

alter view product as(
SELECT
    p.productkey,p.englishProductName  AS NomeProdotto,
    sc. englishProductSubcategoryName AS Sottocategoria,
    c.englishProductCategoryName AS Categoria
	FROM DimProduct p
JOIN DimProductSubcategory sc ON p.ProductSubcategoryKey = sc.ProductSubcategoryKey
join dimproductcategory c ON sc.ProductCategoryKey = c.ProductCategoryKey);




SELECT r.ResellerName AS NomeReseller,
 g.City AS Città,
 g.englishcountryRegionName AS Regione,
 r.resellerkey
FROM DimReseller r
 Join dimgeography g on r.geographykey= g.geographykey;

alter VIEW Reseller AS(SELECT r.ResellerName AS NomeReseller,
 g.City AS Città,
 g.englishcountryRegionName AS Regione,
 r.resellerkey
FROM DimReseller r
 Join dimgeography g on r.geographykey= g.geographykey);
 
 SELECT F.OrderDate,F.salesordernumber,F.SalesOrderLineNumber,F.OrderQuantity,F. SalesAmount, F. salesamount-F.totalproductcost AS PROFITTO,
R.ResellerKey, P.ProductKey
FROM factresellersales F 
JOIN dimproduct P  ON F.ProductKey=P. ProductKey
JOIN dimreseller R ON F.ResellerKey=R.ResellerKey;

 
 alter view Sales AS( 
 SELECT F.OrderDate,F.salesordernumber,F.SalesOrderLineNumber,F.OrderQuantity,F. SalesAmount, F. salesamount-F.totalproductcost AS PROFITTO,
R.ResellerKey, P.ProductKey
FROM factresellersales F 
JOIN dimproduct P  ON F.ProductKey=P. ProductKey
JOIN dimreseller R ON F.ResellerKey=R.ResellerKey);








