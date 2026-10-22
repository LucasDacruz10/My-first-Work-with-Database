
🛒 Store Management System (SQL + Python)

Relational database project for a store, modeled in DBDesigner 4 and implemented in MySQL, with Python integration for data entry and report generation.

🚧 Status: Under development.

The project is not yet complete, but it is constantly progressing. The SQL part is already working; the Python part is being built gradually.

📌 Objective

To practice and demonstrate, in practice, the complete cycle of a data project:

1. Database modeling

2. Creation of tables and relationships in SQL

3. Queries with SELECT and JOIN

4. Integration with Python (CRUD)

5. Reports and data analysis with pandas

🗂️ Database Structure

The meubanco database has 4 tables related by foreign keys (FK):

Table Fields Description
Clients id, Name, Email Client data
Products id, Name, Price Product catalog
Orders id, Clients_id (FK), OrderDate Orders placed by clients
OrderItems id, Orders_id (FK), Products_id (FK), Quantity, UnitPrice Items of each order

Relationships:

• A client can place multiple orders

• An order can have multiple items

• A product can Appear in multiple order items

✅ What has already been done

☑︎ Database modeling in DBDesigner 4

☑︎ Creation of the 4 tables and foreign keys in MySQL

☑︎ Insertion of test data (customers, products, orders, and items)

☑︎ Queries with SELECT and JOIN

🔜 Next steps

☐︎ More SQL queries (total per customer, best-selling product, LEFT JOIN)

☐︎ Improvements to the structure (InnoDB ENGINE, Status field in Orders, Stock field in Products)

☐︎ Python script for registration via terminal (Customers, Products, and Orders) with mysql.connector

☐︎ Python script for reports with pandas (total per customer, best-selling product, export to CSV/Excel)

☐︎ Organization of the repository into folders SQL and Python

🛠️ Technologies

• MySQL and MySQL Workbench

• DBDesigner 4 (modeling)

• Python 3

• mysql-connector-python (database connection)

• pandas (reports and analysis
