# CRUD System for Financial Management

## Description
This project implements a CRUD system for managing customers, invoices, and transactions from Fintech platforms (Nequi, Daviplata). It includes data normalization, bulk CSV loading, REST API, and advanced queries.

## Technologies
- Node.js + Express
- MySQL
- HTML/CSS/JS (Frontend)
- CSV Parser
- Postman

## Setup
1. Run: `npm install`
2. Create DB: `mysql -u root -p < database.sql`
3. Clean CSV files and place in `/data`
4. Load data: `npm run load`
5. Start server: `npm run dev`

## Normalization
Applied 1NF, 2NF, 3NF by splitting data into 3 normalized tables with proper relationships.

## Bulk Load
Uses `loadData.js` to parse and insert CSV data into MySQL.

## Advanced Queries
1. `/api/reports/total-paid-by-customer`
2. `/api/reports/pending-invoices`
3. `/api/reports/transactions-by-platform/:platform`

## Postman
See `postman_collection.json` for all endpoints.

## Model
![Relational Model](model.png)

## Developer
- Name: Sebastian Pereira
- Clan: Manglar
- Email: sebastian.pereira@example.com