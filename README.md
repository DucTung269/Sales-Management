# Sales Management Analytics Dashboard

## Project Overview

This project presents an end-to-end sales analytics solution built with the Microsoft AdventureWorks sample database.

The objective was to transform raw transactional data into a structured analytical model and interactive Power BI dashboard that supports analysis of:

- Overall sales performance
- Product performance
- Customer activity
- Geographic sales distribution
- Monthly sales patterns
- Sales performance against budget / target

The project demonstrates the complete analytics workflow:

**SQL → Data Cleaning → Power Query → Data Modeling → DAX → Power BI → Business Analysis**

---

## Business Objectives

The dashboard was designed to answer the following business questions:

- How much revenue was generated during the reporting period?
- Which products and product categories generate the most sales?
- Which customers contribute the most revenue?
- Where are customers and sales geographically concentrated?
- How does sales performance vary by month?
- Did actual sales meet or exceed the planned sales target?
- Which months performed above or below budget?
- How can sales performance be explored by product, customer, year, month, and location?

---

## Data Source

**Microsoft AdventureWorks Sample Database**

[Download AdventureWorks](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms)

### Reporting Scope

The Power BI model supports the years:

- 2019
- 2020
- 2021

After validating the sales fact table, the actual transaction period used in the current model is:

- **First Sales Date:** 02 January 2019
- **Last Sales Date:** 28 January 2021

> **Important:** 2021 contains only partial-year sales data and should therefore not be directly compared with the full years 2019 and 2020.

---

## Tools Used

- SQL Server Management Studio (SSMS)
- Microsoft Excel
- Power Query
- Power BI
- DAX

---

## Data Preparation

SQL was used to extract, clean, transform, and enrich the source data before loading it into Power BI.

The main preparation steps included:

- Selecting only business-relevant columns
- Filtering the reporting period
- Joining customer data with geographic information
- Combining product data with category and subcategory information
- Transforming coded values into readable labels
- Handling missing values
- Standardizing date columns
- Creating business-friendly column names
- Preparing fact and dimension tables for Power BI
- Performing additional transformations in Power Query

---

## SQL Techniques Used

The project uses the following SQL techniques and functions:

- `SELECT`
- `DISTINCT`
- `WHERE`
- `LEFT JOIN`
- `CASE WHEN`
- `CAST()`
- `LEFT()`
- `ISNULL()`
- `ORDER BY`
- Table aliases
- Column aliases using `AS`
- Date filtering
- Data validation queries

### Example Transformations

Customer gender codes were converted into readable values:

```sql
CASE
    WHEN c.[Gender] = 'M' THEN 'Male'
    WHEN c.[Gender] = 'F' THEN 'Female'
    ELSE 'Unknown'
END AS [Gender]
