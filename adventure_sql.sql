SELECT * FROM adventure.adventure_table;

-- Check if data is inserted correctly
SELECT * FROM adventure_table;

# Average Standard Cost per Subcategory
SELECT Subcategory, AVG(StandardCost) AS Avg_Standard_Cost
FROM adventure_table
GROUP BY Subcategory;

# Count of Products per Category
SELECT Category, COUNT(*) AS Product_Count
FROM adventure.adventure_table
GROUP BY Category;


#  Find Most Expensive Product
SELECT Product, StandardCost
FROM adventure_table
ORDER BY StandardCost DESC
LIMIT 1;

# Products with Cost Greater Than $100
SELECT Product, StandardCost
FROM adventure_table
WHERE StandardCost > 100;


-- Assuming we have a foreign key link between Products and SalesTerritory
SELECT 
    p.ProductKey,
    p.Product,
    p.StandardCost,
    s.Region,
    s.TerritoryGroup
FROM adventure_table p
JOIN cl_region s ON p.ProductKey = s.SalesTerritoryKey;


