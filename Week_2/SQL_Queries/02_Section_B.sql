USE shopease_db;

-- =====================================================
-- SECTION B : FILTERING & OPTIMIZATION
-- =====================================================

-- Q7. Display all delivered orders

SELECT *
FROM orders
WHERE status = 'Delivered';

-- -----------------------------------------------------

-- Q8. Electronics products with price greater than 2000

SELECT *
FROM products
WHERE category = 'Electronics'
AND unit_price > 2000;

-- -----------------------------------------------------

-- Q9. Customers from Maharashtra who joined in 2024

SELECT *
FROM customers
WHERE state = 'Maharashtra'
AND join_date BETWEEN '2024-01-01' AND '2024-12-31';

-- -----------------------------------------------------

-- Q10. Orders placed between 10 Aug and 25 Aug (excluding cancelled)

SELECT *
FROM orders
WHERE order_date BETWEEN '2024-08-10' AND '2024-08-25'
AND status <> 'Cancelled';

-- -----------------------------------------------------

-- Q11. Index Explanation

/*
The index idx_orders_date is created on the order_date column.

It helps MySQL quickly locate records based on order dates
instead of scanning the entire table.

Sample query using this index:
*/

SELECT *
FROM orders
WHERE order_date = '2024-08-15';

-- -----------------------------------------------------

-- Q12. SARGable Query

/*
Query using YEAR(join_date) may not efficiently use an index
because the YEAR() function is applied to the indexed column.

Index-friendly (SARGable) query:
*/

SELECT *
FROM customers
WHERE join_date BETWEEN '2024-01-01'
AND '2024-12-31';

