# Sales Management

## Project Overview

This project presents an end-to-end sales analytics solution based on the **Microsoft AdventureWorks sample database**.

The objective is to transform raw transactional data into a structured analytical model and interactive Power BI dashboards for monitoring:

- Sales performance
- Product performance
- Customer activity
- Geographic sales distribution
- Monthly sales patterns
- Actual Sales vs. Sales Target
- Top-performing products and customers

The project follows the complete analytics workflow:

**SQL → Data Cleaning → Power Query → Data Modeling → DAX → Power BI → Business Analysis**

---

## Project Details

### Data Source

**Microsoft AdventureWorks Sample Database**

Click here to access and download the sample database:

[AdventureWorks](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms)

### Reporting Period

The Date dimension supports:

- 2019
- 2020
- 2021

After validating and cleaning the Sales Fact table, the sales transactions included in the current analysis cover:

- **First Sales Date:** 02 January 2019
- **Last Sales Date:** 28 January 2021

> **Note:** 2021 contains only partial-year data. Therefore, 2021 should not be interpreted as a complete year when comparing annual performance.

---

## Tools Used

- Microsoft Excel
- SQL Server Management Studio (SSMS)
- Power Query
- Power BI
- DAX

---

## Tasks Performed

- Extracted relevant data using SQL
- Cleaned and transformed raw data
- Prepared customer, product, date, and sales datasets
- Joined related tables using SQL
- Enriched customer data with geographic information
- Combined product information with category and subcategory data
- Standardized dates and numeric fields
- Performed additional transformations in Power Query
- Built a star-schema-style semantic model
- Created DAX measures for business KPIs
- Validated fact-to-dimension relationships
- Reconciled KPI totals against detailed matrix totals
- Created interactive Power BI dashboards for analysis and reporting

---

## SQL Techniques and Functions Used

The project uses SQL for data extraction, validation, cleaning, and transformation.

Techniques and functions used include:

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
- Column aliases with `AS`
- Date filtering
- Data validation queries

Customer data was enriched with geographic information, product data was combined with product category and subcategory hierarchies, date dimensions were prepared for time-based analysis, and Internet sales transactions were filtered and transformed before being loaded into Power BI.

Example transformation:

```sql
CASE
    WHEN c.[Gender] = 'M' THEN 'Male'
    WHEN c.[Gender] = 'F' THEN 'Female'
    ELSE 'Unknown'
END AS [Gender]
