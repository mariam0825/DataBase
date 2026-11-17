USE cape_codd;
-- 2.17
SELECT SKU,SKU_Description FROM INVENTORY;
-- 2.18
SELECT SKU_Description,SKU FROM INVENTORY;
-- 2.19
SELECT WarehouseID FROM INVENTORY;
-- 2.20
SELECT DISTINCT WarehouseID FROM INVENTORY;
-- 2.21
SELECT WarehouseID,SKU,SKU_Description,QuantityOnHand,QuantityOnOrder FROM INVENTORY;
-- 2.22
SELECT * FROM INVENTORY;
-- 2.23
SELECT QuantityOnHand FROM INVENTORY WHERE QuantityOnHand > 0;
-- 2.24
SELECT SKU,SKU_Description,QuantityOnHand FROM INVENTORY WHERE QuantityOnHand = 0;
-- 2.25
SELECT SKU,SKU_Description,WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 ORDER BY WarehouseID;
-- 2.26
SELECT SKU,SKU_Description,WarehouseID FROM INVENTORY WHERE QuantityOnHand > 0 ORDER BY WarehouseID DESC,SKU ASC;
-- 2.27
SELECT SKU,SKU_Description,WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 AND QuantityOnOrder >0 ORDER BY WarehouseID DESC,SKU ASC;
-- 2.28
SELECT SKU,SKU_Description,WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 OR QuantityOnOrder = 0 ORDER BY WarehouseID DESC,SKU ASC;
-- 2.29
SELECT SKU,SKU_Description,WarehouseID,QuantityOnHand FROM INVENTORY WHERE QuantityOnHand >1 AND QuantityOnHand <10;
-- 2.30
SELECT SKU,SKU_Description,WarehouseID,QuantityOnHand FROM INVENTORY WHERE QuantityOnHand Between 2 AND  9 ;
-- 2.31
SELECT DISTINCT SKU,SKU_Description FROM INVENTORY WHERE SKU_Description LIKE 'Half-Dome%';
-- 2.32
SELECT DISTINCT SKU,SKU_Description FROM INVENTORY WHERE SKU_Description LIKE '%Climb%';
-- 2.33
SELECT DISTINCT SKU,SKU_Description FROM INVENTORY WHERE SKU_Description LIKE '__d%';
-- 2.34
SELECT SUM(QuantityOnHand) AS sum,
 COUNT(*) AS NumberOfRows,
 COUNT(QuantityOnHand) AS QuantityOnHandCount,
 AVG(QuantityOnHand) AS QuantityOnHandAvg,
 MIN(QuantityOnHand) AS QuantityOnHandmin,
 MAX(QuantityOnHand) AS QuantityOnHandMax
 FROM INVENTORY;

 -- 2.35
 -- COUNT(*) counts the number of rows(32) in the Inventory TABLE
 -- COUNT(QuantityOnHand) counts the Number Of rows(32) where the column QuantityOnHand is Not NULL
 -- SUM add all the number of items in the particular colunm

 -- 2.36
 SELECT WarehouseID, SUM(QuantityOnHand)  AS TotalItemsOnHand FROM INVENTORY  GROUP BY WarehouseID  ORDER BY TotalItemsOnHand DESC;

 -- 2.37
  SELECT WarehouseID, SUM(QuantityOnHand)  AS TotalItemsOnHandLT3 FROM INVENTORY  WHERE QuantityOnHand < 3 GROUP BY WarehouseID  ORDER BY TotalItemsOnHandLT3 DESC;
  
  -- 2.38
   SELECT WarehouseID, SUM(QuantityOnHand)  AS TotalItemsOnHandLT3 FROM INVENTORY  WHERE QuantityOnHand < 3 GROUP BY WarehouseID HAVING COUNT(*) <2 ORDER BY TotalItemsOnHandLT3 DESC; 
-- 2.39
-- The SQL WHERE clause specifies which rows will be used to determine the groups or it is used for filtering.
-- The SQL HAVING clause specifies which groups will be used in the final result or it is used after you have uses Grouprd by.
-- WHERE filters rows before grouping, while HAVING filters after GROUP BY and works on aggregated data.
















