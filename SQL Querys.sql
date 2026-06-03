-- Use Database
USE olist_db;

-- 1. Display all records
SELECT * 
FROM olist_customers_dataset;

-- 2. Display first 10 records
SELECT *
FROM olist_customers_dataset
LIMIT 10;

-- 3. WHERE Clause
SELECT *
FROM olist_customers_dataset
WHERE customer_state = 'SP';

-- 4. ORDER BY
SELECT *
FROM olist_customers_dataset
ORDER BY customer_city;

-- 5. COUNT Aggregate Function
SELECT COUNT(*) AS Total_Customers
FROM olist_customers_dataset;

-- 6. GROUP BY State
SELECT customer_state,
       COUNT(*) AS Total_Customers
FROM olist_customers_dataset
GROUP BY customer_state
ORDER BY Total_Customers DESC;

-- 7. Distinct States
SELECT DISTINCT customer_state
FROM olist_customers_dataset;

-- 8. Customers per City
SELECT customer_city,
       COUNT(*) AS Customer_Count
FROM olist_customers_dataset
GROUP BY customer_city
ORDER BY Customer_Count DESC;

-- 9. Subquery Example
SELECT *
FROM olist_customers_dataset
WHERE customer_state IN
(
    SELECT customer_state
    FROM olist_customers_dataset
    GROUP BY customer_state
    HAVING COUNT(*) > 1000
);

-- 10. Create View
CREATE VIEW customer_summary AS
SELECT customer_state,
       COUNT(*) AS Total_Customers
FROM olist_customers_dataset
GROUP BY customer_state;

-- View Output
SELECT *
FROM customer_summary;

-- 11. Create Index
CREATE INDEX idx_customer_state
ON olist_customers_dataset(customer_state);

-- 12. Verify Index
SHOW INDEX FROM olist_customers_dataset;
SELECT * 
FROM olist_customers_dataset
LIMIT 10;
SELECT *
FROM olist_customers_dataset
WHERE customer_state='SP';

SELECT COUNT(*) AS Total_Customers
FROM olist_customers_dataset;

SELECT customer_state,
       COUNT(*) AS Total_Customers
FROM olist_customers_dataset
GROUP BY customer_state;


SELECT DISTINCT customer_state
FROM olist_customers_dataset;


CREATE VIEW customer_summary AS
SELECT customer_state,
       COUNT(*) AS Total_Customers
FROM olist_customers_dataset
GROUP BY customer_state;


SELECT * FROM customer_summary;


CREATE INDEX idx_customer_state
ON olist_customers_dataset(customer_state);

SHOW INDEX FROM olist_customers_dataset;