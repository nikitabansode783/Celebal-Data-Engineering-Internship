USE shopease_db;

-- =====================================================
-- SECTION D : JOINS & RELATIONSHIPS
-- =====================================================

-- Q19. INNER JOIN - Orders with customer details

SELECT
    o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    o.total_amount
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;

-- -----------------------------------------------------

-- Q20. LEFT JOIN - Display all customers and their orders

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date,
    o.status
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- -----------------------------------------------------

-- Q21. JOIN across three tables

SELECT
    o.order_id,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    oi.discount_pct
FROM orders o
INNER JOIN order_items oi
ON o.order_id = oi.order_id
INNER JOIN products p
ON oi.product_id = p.product_id;

-- -----------------------------------------------------

-- Q22. LEFT JOIN vs RIGHT JOIN

/*
LEFT JOIN:
Returns all records from the left table and matching
records from the right table.

RIGHT JOIN:
Returns all records from the right table and matching
records from the left table.

Example:
LEFT JOIN is useful for displaying all customers
even if they have not placed any orders.

FULL OUTER JOIN:
Returns all matching and non-matching records from both tables.
It is useful when you want every record from both tables,
regardless of whether a match exists.
*/

-- -----------------------------------------------------

-- Q23. Foreign Key Relationships

/*
Foreign Keys:

orders.customer_id
        -> customers.customer_id

order_items.order_id
        -> orders.order_id

order_items.product_id
        -> products.product_id

If customer_id = 999 is inserted into the orders table
and no such customer exists,
MySQL will generate a FOREIGN KEY constraint error
and the record will not be inserted.
*/