select count(*) as NullCount
from dimproduct
where ProductKey is null;

select ProductKey,count(*) as occurences
from dimproduct
group by ProductKey
having count(*) >1;

select SalesOrderLineNumber,SalesOrderNumber, count(*) as occurences
from factresellersales
group by SalesOrderNumber,SalesOrderLineNumber
having count(*)>1;

select cast(OrderDate as date)  as Data, count(SalesOrderLineNumber) as transazioni
from factresellersales
where OrderDate>="2020-01-01"
group by cast(Orderdate as Date)
order by data;

SELECT
   p. SpanishProductName AS NomeDelProdotto,
    SUM(s.SalesAmount) AS FatturatoTotale,
    SUM(s.OrderQuantity) AS QuantitàTotaleVenduta,
    AVG(s.UnitPrice) AS PrezzoMedioDiVenditan
FROM factresellersales s 
JOIN dimproduct p ON s.ProductKey = p.ProductKey
WHERE s.OrderDate >= '2020-01-01'
GROUP BY p.SpanishProductName
ORDER BY FatturatoTotale DESC; 

SELECT
    pc.EnglishProductCategoryName AS NomeCategoriaProdotto,
    SUM(s.SalesAmount) AS FatturatoTotale,
    SUM(s.OrderQuantity) AS QuantitàTotaleVenduta
FROM factresellersales s
right JOIN dimproduct p ON s.ProductKey = p.ProductKey
left JOIN dimproductcategory pc ON p.ProductKey = pc.ProductCategoryKey
GROUP BY pc.EnglishProductCategoryName
ORDER BY FatturatoTotale DESC;

SELECT
    g.City AS Città,
    SUM(s.SalesAmount) AS FatturatoTotale
FROM factresellersales s
right join dimreseller r ON s.ResellerKey = r. ResellerKey
left join dimgeography g on r. GeographyKey= g.GeographyKey
WHERE s.OrderDate >= '2020-01-01'
GROUP BY g.City
HAVING SUM(s.SalesAmount) > 60000
ORDER BY FatturatoTotale DESC;

