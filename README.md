📚 Online Bookstore Database Project – README
📌 Overview

The Online Bookstore Database Project is a SQL-based system designed to manage books, customers, and orders. It demonstrates database creation, table relationships, and both basic and advanced SQL queries. This project is ideal for beginners and intermediate learners who want hands-on experience with relational databases, joins, constraints, and analytical SQL functions.

🏗️ Database Structure
1. Books Table

Stores book information.

Book_ID (PK)

Title

Author

Genre

Published_Year

Price

Stock

2. Customers Table

Stores customer details.

Customer_ID (PK)

Name

Email

Phone

City

Country

3. Orders Table

Stores order transactions.

Order_ID (PK)

Customer_ID (FK → Customers)

Book_ID (FK → Books)

Order_Date

Quantity

Total_Amount

🛠️ Features & SQL Operations
✔️ Basic SQL Queries

Retrieve books by genre

Find books published after a certain year

List customers by country

Fetch orders by date range

Calculate total stock

Identify highest & lowest priced books

Filter orders based on quantity or price

✔️ Advanced SQL Queries

Total books sold per genre

Average book price by genre

Customers with multiple orders

Most ordered book

Top 3 expensive books in a genre

Total books sold per author

Highest spending customer

Stock remaining after all orders

📈 Learning Outcomes

SQL table creation (DDL)

Data manipulation & filtering

Aggregate functions (SUM, AVG, COUNT)

Use of JOINS (INNER, LEFT)

GROUP BY & HAVING

Real-world analytical SQL
