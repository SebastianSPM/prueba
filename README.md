# Financial Data Management System for Fintech Platforms
## System Description

This project is a solution developed for ExpertSoft's client in the Colombian electric sector to manage disorganized financial data from Fintech platforms like Nequi and Daviplata. The data, originally scattered in Excel files, is normalized, stored in a SQL database, and managed through a CRUD system with advanced queries. The system allows for data loading from CSV, administration of entities, and key financial insights via API endpoints.
Instructions to Execute the Project

## Prerequisites:

- Node.js (v18 or higher) installed.
- MySQL server running locally.
- Git installed for cloning the repository.


Clone the Repository:
textgit clone https://github.com/sebasperemald/your-repo-name.git
cd your-repo-name

Set Up the Database:

Create a new MySQL database pd_sebastian_pereira_manglar
Run the DDL script to create tables:
textmysql -u yourusername -p yourdatabase < database_ddl.sql



Install Dependencies:

For backend (API with Express):
textcd backend
npm install

For frontend (Dashboard):
textcd ../frontend
npm install



Configure Environment:

Create a .env file in the backend directory with:
textDB_HOST=localhost
DB_USER=yourusername
DB_PASSWORD=yourpassword
DB_NAME=pd_firstname_lastname_clan
PORT=3000



Run the Backend:
textcd backend
npm start
The API will be available at http://localhost:3000.
Run the Frontend:
textcd frontend
npm start
The dashboard will open in your browser (usually at http://localhost:3000 or similar).
Import Postman Collection:

Open Postman and import postman_collection.json from the repository to test CRUD and queries.



Technologies Used

Backend: Node.js, Express.js for API development.
Database: MySQL for SQL storage.
Frontend: React.js with Bootstrap for the dashboard.
Data Handling: CSV parsing with PapaParse or similar for loading.
Tools: Draw.io for relational model, Postman for API testing.

Explanation of the Normalization
The original Excel data was disorganized with redundant and multi-valued fields. Normalization was applied manually as follows:

1NF (First Normal Form): Ensured atomic values by splitting multi-valued columns (e.g., multiple transactions per row) into separate rows. Removed repeating groups.
2NF (Second Normal Form): Eliminated partial dependencies by creating separate tables for entities like Customers, Invoices, Transactions, and Platforms. Each non-key attribute depends on the entire primary key.
3NF (Third Normal Form): Removed transitive dependencies. For example, customer details were separated from invoices to avoid dependencies like invoice depending on customer address indirectly.

The normalized model includes tables such as customers, invoices, transactions, platforms, with appropriate primary and foreign keys.
Instructions for Massive Load from CSV

Convert the provided Excel (.xlsx) to CSV using tools like Excel or online converters. Save as data.csv.
Ensure the CSV matches the normalized structure (e.g., separate CSVs for each table if needed).
Run the load script manually:
textnode backend/scripts/load_csv.js
This script reads the CSV and inserts data into the MySQL database using bulk insert queries.
Alternatively, use the frontend button (if implemented): Navigate to the dashboard's "Load Data" section and click the button to trigger the load via API.
Verify insertion by querying the database or checking logs for success messages.

Explanation of the Advanced Queries
The following queries are implemented as API endpoints and testable via Postman:

Total Paid by Each Customer:

Endpoint: GET /api/queries/total-paid
SQL: SELECT c.customer_id, c.name, SUM(t.amount) AS total_paid FROM customers c JOIN invoices i ON c.customer_id = i.customer_id JOIN transactions t ON i.invoice_id = t.invoice_id WHERE t.status = 'paid' GROUP BY c.customer_id;
Purpose: Aggregates payments per customer for income tracking.


Pending Invoices with Customer and Transaction Info:

Endpoint: GET /api/queries/pending-invoices
SQL: SELECT i.invoice_id, c.name, t.transaction_id, i.amount_due FROM invoices i JOIN customers c ON i.customer_id = c.customer_id JOIN transactions t ON i.invoice_id = t.invoice_id WHERE i.status = 'pending';
Purpose: Identifies unpaid invoices for follow-up, including client and transaction details.


Transactions by Platform:

Endpoint: GET /api/queries/transactions-by-platform?platform=nequi (query param for platform)
SQL: SELECT t.transaction_id, c.name, i.invoice_id, t.amount FROM transactions t JOIN platforms p ON t.platform_id = p.platform_id JOIN invoices i ON t.invoice_id = i.invoice_id JOIN customers c ON i.customer_id = c.customer_id WHERE p.name = ?;
Purpose: Lists transactions from a specific platform (e.g., Nequi), linked to customers and invoices.