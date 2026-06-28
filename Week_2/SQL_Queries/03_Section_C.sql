USE shopease_db;

-- =====================================================
-- SECTION C : AGGREGATION
-- =====================================================

-- Q13. Total number of orders

SELECT COUNT(*) AS Total_Orders
FROM orders;

-- -----------------------------------------------------

-- Q14. Total revenue from Delivered orders

SELECT SUM(total_amount) AS Total_Revenue
FROM orders
WHERE status = 'Delivered';

-- -----------------------------------------------------

-- Q15. Average product price in each category

SELECT category,
       ROUND(AVG(unit_price),2) AS Average_Price
FROM products
GROUP BY category;

-- -----------------------------------------------------

-- Q16. Order count and total revenue by status

SELECT status,
       COUNT(order_id) AS Total_Orders,
       SUM(total_amount) AS Total_Revenue
FROM orders
GROUP BY status
ORDER BY Total_Revenue DESC;

-- -----------------------------------------------------

-- Q17. Most expensive and cheapest product in each category

SELECT category,
       MAX(unit_price) AS Highest_Price,
       MIN(unit_price) AS Lowest_Price
FROM products
GROUP BY category;

-- -----------------------------------------------------

-- Q18. Categories with average price greater than 2000

SELECT category,
       ROUND(AVG(unit_price),2) AS Average_Price
FROM products
GROUP BY category
HAVING AVG(unit_price) > 2000;

