---#1--- Overall Sales Summary

SELECT 
	COUNT(*) AS total_transactions,
	SUM(`Total Spent`) AS  total_sales,
    ROUND(AVG(`Total Spent`),2) AS avg_sales
FROM retail_data;

---#2---Sales By Category

SELECT
	Category,
    COUNT(*) AS transactions,
    SUM(`Total Spent`) AS total_sales,
    ROUND(AVG(`Total Spent`),2) AS avg_sales
    FROM  retail_data
    GROUP BY Category
    ORDER BY total_sales DESC;
    
---#3--- Category Share Of Total Sales

SELECT
    Category,
    SUM(`Total Spent`) AS total_sales,
    ROUND(
        SUM(`Total Spent`) /
        (SELECT SUM(`Total Spent`) FROM retail_data)
        * 100,
        2
    ) AS sales_percentage
FROM retail_data
GROUP BY Category
ORDER BY sales_percentage DESC;

---#4--- Sales By Item

SELECT
	Item,
    COUNT(*) AS transactions,
    SUM(`Total Spent`) AS total_sales,
    ROUND(AVG(`Total Spent`),2) AS avg_sales
FROM retail_data
GROUP BY Item
ORDER BY total_sales DESC;

---#5---Top 10 Customers By Total Sales

SELECT
    `Customer ID`,
    SUM(`Total Spent`) AS total_sales
FROM retail_data
GROUP BY `Customer ID`
ORDER BY total_sales DESC
LIMIT 10;

---#6--- Average Quantity By Category

SELECT
    Category,
    ROUND(AVG(Quantity), 2) AS avg_quantity
FROM retail_data
GROUP BY Category
ORDER BY avg_quantity DESC;

---#7--- Sales By Quantity

SELECT
    Quantity,
    COUNT(*) AS transactions,
    SUM(`Total Spent`) AS total_sales
FROM retail_data
GROUP BY Quantity
ORDER BY Quantity;

---#8--- Sales Performance By Category

SELECT
    Category,
    COUNT(*) AS transactions,
    SUM(Quantity) AS total_quantity,
    SUM(`Total Spent`) AS total_sales,
    ROUND(AVG(`Total Spent`), 2) AS avg_sales
FROM retail_data
GROUP BY Category
ORDER BY total_sales DESC;

---#9---CASE WHEN - Classify Transactions

SELECT
    Category,
    `Total Spent`,
    CASE
        WHEN `Total Spent` >= 100 THEN 'High'
        WHEN `Total Spent` >= 50 THEN 'Medium'
        ELSE 'Low'
    END AS sales_level
FROM retail_data;

---#10--- Sales Level Summary

SELECT
    CASE
        WHEN `Total Spent` >= 100 THEN 'High'
        WHEN `Total Spent` >= 50 THEN 'Medium'
        ELSE 'Low'
    END AS sales_level,
    COUNT(*) AS transactions,
    SUM(`Total Spent`) AS total_sales
FROM retail_data
GROUP BY sales_level
ORDER BY total_sales DESC;

---#11---CTE- Category Performance

WITH category_sales AS (
    SELECT
        Category,
        SUM(`Total Spent`) AS total_sales
    FROM retail_data
    GROUP BY Category
)
SELECT
    Category,
    total_sales
FROM category_sales
ORDER BY total_sales DESC;

---#12--- Window Functions- Category Ranking

SELECT
    Category,
    SUM(`Total Spent`) AS total_sales,
    RANK() OVER (
        ORDER BY SUM(`Total Spent`) DESC
    ) AS sales_rank
FROM retail_data
GROUP BY Category;