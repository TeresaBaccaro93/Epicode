select * 
from dimproduct D
join dimproductsubcategory SUB ON D. ProductSubcategoryKey= SUB. ProductSubcategoryKey
join dimproductcategory CAT ON SUB. ProductcategoryKey= CAT. ProductCategoryKey
;

SELECT * 
FROM dimproduct D
JOIN factresellersales F ON D. ProductKey=F.ProductKey
;

SELECT *
FROM dimproduct D  
LEFT JOIN factresellersales F ON D.ProductKey= F. ProductKey
WHERE SalesOrderNumber IS NULL
AND FinishedGoodsFlag=1
;

select distinct f. ProductKey
from factresellersales f;

select distinct D.ProductKey,D.EnglishProductName,D.FinishedGoodsFlag
from dimproduct D
where D.FinishedGoodsFlag=1 and D.ProductKey not in (select distinct D. ProductKey
from factresellersales f);

select D.EnglishProductName, D. SpanishProductName, D.FrenchProductName
from dimproduct D;

select D .EnglishProductName, D.SpanishProductName, D.FrenchProductName
from dimproduct D
join factresellersales F on D. ProductKey= F. ProductKey
;

select *
from factresellersales f 
join dimproductcategory CAT ON f. ProductKey = CAT. ProductCategoryKey
;

select*
from dimreseller r
join dimgeography g  on r. GeographyKey = g. GeographyKey
;

select ResellerName,GeographyKey
from dimreseller;


select s. SalesOrderNumber,s. SalesOrderLineNumber,s. OrderDate,s. OrderQuantity,s. UnitPrice, s.TotalProductCost, p. EnglishProductName,cat.EnglishProductCategoryName,r.resellername,g. englishcountryregionname
FROM factresellersales s
 left join dimproduct p on s. ProductKey= p. ProductKey
 left join dimproductcategory sub ON p. ProductKey = sub. ProductCategoryKey
 left join dimproductcategory cat on sub.ProductCategoryKey=cat.ProductCategoryKey
 left join dimreseller r on s. ResellerKey=r.ResellerKey
 left join dimgeography g on r.GeographyKey=g.GeographyKey








 














