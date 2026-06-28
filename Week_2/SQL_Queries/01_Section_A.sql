USE shopease_db;

-- =====================================================
-- SECTION A : SQL BASICS
-- =====================================================

-- Q1. Display all records from customers table
SELECT *
FROM customers;

-- -----------------------------------------------------

-- Q2. Display customer's first name, last name and city
SELECT first_name, last_name, city
FROM customers;

-- -----------------------------------------------------

-- Q3. Display all unique product categories
SELECT DISTINCT category
FROM products;

-- -----------------------------------------------------

-- Q4. Primary Keys Used
/*
customers    -> customer_id
products     -> product_id
orders       -> order_id
order_items  -> item_id

Explanation:
A Primary Key uniquely identifies each record in a table.
It cannot contain duplicate values or NULL values.
*/

-- -----------------------------------------------------

-- Q5. Constraints on email column
/*
Constraints:
1. NOT NULL
2. UNIQUE

If a duplicate email is inserted,
MySQL returns a Duplicate Entry error because of the UNIQUE constraint.
*/

-- -----------------------------------------------------

-- Q6. Check Constraint Example

INSERT INTO products
(product_id, product_name, category, brand, unit_price, stock_qty)
VALUES
(209, 'Sample Product', 'Electronics', 'DemoBrand', -50, 20);

/*
Expected Result:
The INSERT statement fails because unit_price cannot be less than 0.

Constraint Responsible:
CHECK (unit_price > 0)
*/

