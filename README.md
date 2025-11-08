
# International Debt Statistics Analysis

## 📊 Overview

This repository contains a structured SQL analysis of international debt statistics. The primary goal of this project is to explore, clean, and analyze a dataset containing financial indicators related to the debt of various countries, providing insights into global financial health and debt burdens.

The analysis is performed using a single SQL script (`international_debt.sql`), focusing on key metrics like total debt, average debt by country and indicator, and identifying the most and least indebted nations.

---

## 📂 File Structure

The project is self-contained with one main analytical file:

* **`international_debt.sql`**: The core SQL script. It contains all the queries for data manipulation, cleaning (if necessary), aggregation, and final analysis.

---

## ✨ SQL Analysis Highlights

The `international_debt.sql` script performs the following key analytical tasks:

1.  **Data Inspection:** Initial queries to count the number of distinct countries and debt indicators present in the dataset.
2.  **Total Global Debt:** Calculation of the sum of the total debt amount (or equivalent) recorded across all entries.
3.  **Top Indebted Countries:** Queries to identify the countries with the **highest total debt** amounts.
4.  **Average Debt Analysis:** Calculating the **average debt amount** for different debt indicators (e.g., short-term vs. long-term debt).
5.  **Debt Classification:** Exploring the unique types of debt indicators to understand the composition of international financial obligations (e.g., multilateral, bilateral, private creditors).
6.  **Comparison Queries:** Performing aggregate functions (e.g., `GROUP BY`, `ORDER BY`, `AVG`, `SUM`) to rank and compare countries based on their financial metrics.

---

## 🛠️ Prerequisites

To execute the SQL script, you will need:

* A **Relational Database Management System (RDBMS)** such as PostgreSQL, MySQL, SQLite, or SQL Server.
* A client tool (e.g., DBeaver, pgAdmin, SQL Workbench) to connect to your RDBMS and run the script.
* The raw debt statistics data loaded into a table (often named `international_debt` or similar) in your database.

---

## 🚀 Usage

1.  **Database Setup:** Ensure your RDBMS is running and you have a database schema ready.
2.  **Load Data:** Load your international debt dataset (e.g., from a CSV or similar source) into a table within your database.
3.  **Run Script:** Open the `international_debt.sql` file in your database client.
4.  **Execute Queries:** Execute the queries sequentially or run the entire script to see the analytical results, which are designed to answer specific questions about global debt.
