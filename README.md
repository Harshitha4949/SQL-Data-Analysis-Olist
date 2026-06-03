````markdown
# SQL Data Analysis Using Olist E-Commerce Dataset

## Project Overview

This project demonstrates SQL-based data analysis using the Olist E-Commerce Dataset in MySQL Workbench. The objective is to perform data exploration and analysis using fundamental SQL operations and database concepts.

The project covers data retrieval, filtering, aggregation, grouping, views, and indexing to gain insights from customer data.

---

## Objectives

- Understand database creation and management in MySQL.
- Import CSV datasets into MySQL tables.
- Perform data analysis using SQL queries.
- Apply DBMS concepts such as Views and Indexes.
- Generate meaningful insights from customer records.

---

## Tools Used

- MySQL Server 8.0
- MySQL Workbench 8.0
- Olist E-Commerce Dataset
- GitHub

---

## Database Information

**Database Name:**
```sql
olist_db
```

**Table Used:**
```sql
olist_customers_dataset
```

---

## SQL Concepts Demonstrated

### 1. SELECT Statement

Retrieve records from the dataset.

```sql
SELECT * 
FROM olist_customers_dataset
LIMIT 10;
```

### 2. WHERE Clause

Filter records based on conditions.

```sql
SELECT *
FROM olist_customers_dataset
WHERE customer_state = 'SP';
```

### 3. Aggregate Function

Count total customer records.

```sql
SELECT COUNT(*) AS Total_Customers
FROM olist_customers_dataset;
```

### 4. GROUP BY

Group customers by state.

```sql
SELECT customer_state,
       COUNT(*) AS Total_Customers
FROM olist_customers_dataset
GROUP BY customer_state;
```

### 5. DISTINCT

Display unique customer states.

```sql
SELECT DISTINCT customer_state
FROM olist_customers_dataset;
```

### 6. VIEW

Create a reusable virtual table.

```sql
CREATE VIEW customer_summary AS
SELECT customer_state,
       COUNT(*) AS Total_Customers
FROM olist_customers_dataset
GROUP BY customer_state;
```

Retrieve data from the view:

```sql
SELECT * FROM customer_summary;
```

### 7. INDEX

Improve query performance.

```sql
CREATE INDEX idx_customer_state
ON olist_customers_dataset(customer_state);
```

Verify index:

```sql
SHOW INDEX FROM olist_customers_dataset;
```

---

## Project Structure

```text
SQL-Data-Analysis-Olist/
│
├── README.md
├── queries.sql
├── dataset_info.txt
└── screenshots/
    ├── select_query.png
    ├── where_query.png
    ├── count_query.png
    ├── groupby_query.png
    ├── distinct_query.png
    ├── view_query.png
    └── index_query.png
```

---

## Key Insights

- São Paulo (SP) contains the highest number of customers.
- Customer distribution varies significantly across Brazilian states.
- SQL aggregation functions help summarize large datasets efficiently.
- Views simplify repeated analysis.
- Indexes improve query execution performance.

---

## Learning Outcomes

Through this project, the following DBMS concepts were applied:

- Database Creation
- Table Management
- Data Retrieval
- Data Filtering
- Aggregate Functions
- Grouping Operations
- Views
- Indexing
- SQL Query Execution

---

## Author

**Poluru Harshitha**

 SQL for Data Analysis

---

## Dataset Source

Olist Brazilian E-Commerce Public Dataset

https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce
````

You can save this as **README.md** and upload it directly to your GitHub repository.
