USE cape_codd;

-- 2.40--
SELECT a.SKU, a.SKU_Description, a.WarehouseID, b.WarehouseCity, b.WarehouseState
FROM INVENTORY as a, WAREHOUSE as b  
WHERE WarehouseCity = 'Atlanta' or
 WarehouseCity = 'Bangor'  Or 
 WarehouseCity = 'Chicago';


-- 2.41 --
SELECT a.SKU, a.SKU_Description, a.WarehouseID, b.WarehouseCity, b.WarehouseState
FROM INVENTORY a,WAREHOUSE b WHERE WarehouseCity IN ('Atlanta' , 'Bangor'  ,'Chicago');

-- 2.42 --
SELECT a.SKU, a.SKU_Description, a.WarehouseID, b.WarehouseCity, b.WarehouseState
FROM INVENTORY a, WAREHOUSE b  WHERE WarehouseCity <>'Atlanta' and WarehouseCity <> 'Bangor'  and WarehouseCity <> 'Chicago';

-- 2.43 --
SELECT a.SKU, a.SKU_Description, a.WarehouseID, b.WarehouseCity, b.WarehouseState
FROM INVENTORY a, WAREHOUSE b  WHERE WarehouseCity  NOT IN ('Atlanta','Bangor','Chicago');

-- 2.44 --
SELECT CONCAT(SKU_Description ,  ' is located in ' , WarehouseCity)  as 'ItemLocation' FROM INVENTORY a,WAREHOUSE b ; 

-- 2.45--
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY  WHERE WarehouseID IN (SELECT WarehouseID FROM WAREHOUSE WHERE Manager = 'Lucille Smith');

-- 2.46--
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY 

