#uso la tabella toysgroup
use toysgroup;

#scrivo una query che determina l'unicità dei valori pk della tabella productcategory
SELECT 
    productcategory_ID,
    count(*) AS occorrenze
from Productcategory
GROUP BY  productcategory_ID
HAVING COUNT(*) > 1;

#scrivo una query che determina l'unicità dei valori pk della tabella product
SELECT 
    product_ID,
    count(*) AS occorrenze
from Product
GROUP BY  product_ID
HAVING COUNT(*) > 1;

#scrivo una query che determina l'unicità dei valori pk della tabella region
SELECT 
    Region_ID,
    count(*) AS occorrenze
from region
GROUP BY  region_ID
HAVING COUNT(*) > 1;

#scrivo una query che determina l'unicità dei valori pk della tabella State
SELECT 
    state_ID,
    count(*) AS occorrenze
from State
GROUP BY  state_ID
HAVING COUNT(*) > 1;

#scrivo una query che determina l'unicità dei valori pk della tabella sales
SELECT 
  sales_ID,
    count(*) AS occorrenze
from sales
GROUP BY  Sales_ID
HAVING COUNT(*) > 1;


#espongo l'elenco delle transazioni un campo boleano valorizzato in base alla condizione che siano passati più di 180 giorni dalla data vendita o meno (>180 -> True, <= 180 -> False)
SELECT
    st.sales_ID AS CodiceDocumento,
    st.SalesDate AS Data,
    p.ProductName AS NomeProdotto,
    c.CategoryNameProduct AS CategoriaProdotto,
    s.StateName AS NomeStato,
    r.RegionName AS RegioneVendita,
    if(datediff(curdate(),st.SalesDate)>180,true,false) AS more180days
FROM sales st
JOIN Product p ON st.Product_ID = p.Product_ID
JOIN productcategory c ON p.productCategory_ID = c.ProductCategory_ID
JOIN Region r ON st.Region_ID = r.Region_ID
JOIN State s ON r.Region_ID = s.Region_ID;



SELECT MAX(salesDate) AS MaxData
    FROM Sales;

#calcolo la media delle quantità vendute nell'ultimo anno
SELECT AVG(TotaleQuantita) AS MediaQuantita
    FROM (SELECT SUM(Quantity) AS TotaleQuantita FROM Sales st
        WHERE st.SALESDate >= DATE_SUB((SELECT MAX(salesDate) AS MaxData
    FROM Sales), INTERVAL 1 YEAR)
        GROUP BY Product_ID
    ) AS VenditeUltimoAnno;

#calcolo i prodotti con totale venduto superiore alla media    
 SELECT p.Product_ID,
    SUM(st.Quantity) AS TotaleVenduto
FROM Sales st
JOIN Product p ON st.Product_ID = p.Product_ID
WHERE st.salesDate >= DATE_SUB((SELECT MAX(salesDate) AS MaxData
    FROM Sales), INTERVAL 1 YEAR)
GROUP BY p.Product_ID;

  #prodotti venduti e fatturato per anno
  SELECT p.Product_ID,
    YEAR(st.salesDate) AS Anno,
    SUM(st.TotalPrice) AS FatturatoTotale
FROM Sales st
JOIN Product p ON st.Product_ID = p.Product_ID
GROUP BY
    p.Product_ID,
    YEAR(st.salesDate)
ORDER BY
    p.Product_ID,
    Anno;


#fatturato totale per stato e per anno
SELECT
    YEAR(st.salesDate) AS Anno,
    s.StateName,
    SUM(st.totalprice) AS FatturatoTotale
FROM
    Sales st
    join state s on st.region_ID = s.region_ID
GROUP BY
    Anno,
    s.StateName
ORDER BY
    Anno ASC,
    FatturatoTotale DESC;
    
   #la categoria maggiormente richiesta dal mercato 
    SELECT
    c.CategoryNameProduct,
    SUM(st.Quantity) AS TotaleQuantità
FROM Sales st
join product p on st.Product_ID=p.Product_ID
JOIN productcategory c ON p.ProductCategory_ID = c.ProductCategory_ID
GROUP BY
    c.CategoryNameProduct
ORDER BY
    TotaleQuantità DESC
LIMIT 1;

#uso una left join per trovare i prodotti invenduti
SELECT *
FROM Product p
left JOIN Sales st ON p.Product_ID = st.Product_ID
WHERE st.Product_ID IS NULL;

#utilizzo una sottoquery e controllo se ci sono transazioni di vendita per ogni prodotto
SELECT *
FROM Product p
WHERE not exists (
    SELECT 1
    FROM Sales st
    WHERE st.Product_ID = p.Product_ID
);

#creo una vista con codice prodotto,nomeprodotto e categoriaprodotto
CREATE VIEW VistaProdottiDenormalizzata AS
SELECT p.Product_id,        
    p.ProductName,       
    c.CategoryNameProduct     
FROM Product p
JOIN productcategory c ON p.productCategory_ID = c.ProductCategory_ID;

#creo una vista con le informazioni geografiche
CREATE VIEW informazionigeografiche AS
SELECT s.state_id,
		s.statename,
        s.region_id,
        r.RegionName
FROM state s
JOIN region r ON s.region_ID = r.Region_ID;



