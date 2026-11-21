
-- ==========================================
-- WEEK 6 DATABASE ASSIGNMENT
-- Topic: SQL Joins and Relationships
-- Database: Classic Models
-- ==========================================

-- Select the Classic Models database
USE classicmodels;


-- QUESTION 1: INNER JOIN – Employees and Offices
-- Retrieve employee details and their office codes.

SELECT
    employees.firstName,
    employees.lastName,
    employees.email,
    employees.officeCode
FROM employees
INNER JOIN offices
ON employees.officeCode = offices.officeCode;


-- QUESTION 2: LEFT JOIN – Products and Product Lines
-- Retrieve product names, vendors and product lines.

SELECT
    products.productName,
    products.productVendor,
    productlines.productLine
FROM products
LEFT JOIN productlines
ON products.productLine = productlines.productLine;


-- QUESTION 3: RIGHT JOIN – Customers and Orders
-- Retrieve the first 10 orders with their customer numbers.

SELECT
    orders.orderDate,
    orders.shippedDate,
    orders.status,
    orders.customerNumber
FROM customers
RIGHT JOIN orders
ON customers.customerNumber = orders.customerNumber
LIMIT 10;


-- ==========================================
-- END OF WEEK 6 DATABASE ASSIGNMENT
-- ==========================================
