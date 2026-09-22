# Sales Management Dashboard – AdventureWorks

## Project Overview

This project is a **Sales Management and Business Intelligence Dashboard** created using **SQL Server, Microsoft Excel, Power Query, Power BI, and DAX**.

The goal of this project is to transform raw AdventureWorks sales data into an interactive reporting solution and analyze:

- Sales performance
- Sales vs. budget
- Customer behavior
- Product performance
- Monthly sales trends
- Geographic distribution of customers

The Power BI report contains four main dashboard pages:

1. Sales Overview
2. Sales KPI 2020
3. Product Details
4. Customer Details

---

## Projektdetails

### Data Source

**Microsoft AdventureWorks Sample Database**

Click here to view and download the database:

[AdventureWorks Sample Database](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms)

---

## Tools Used

- Microsoft Excel
- Power Query
- SQL Server Management Studio (SSMS)
- Power BI
- DAX Functions

---

## Tasks Performed

- Extracted relevant data from the AdventureWorks database using SQL
- Cleaned and transformed customer, product, date, and sales data
- Joined multiple database tables
- Exported transformed data into Excel files
- Loaded and transformed data using Power Query
- Created relationships between dimension and fact tables
- Built a star-schema-style Power BI data model
- Created DAX measures for sales, customers, orders, products, and budgets
- Created interactive dashboard filters
- Created KPI cards
- Created sales and budget comparisons
- Created customer and product analyses
- Created geographic visualizations
- Built interactive Power BI dashboards for reporting and analysis

---

## SQL Techniques and Functions Used

Data extraction and transformation were performed using SQL.

The following SQL techniques and functions were used:

- `SELECT`
- `DISTINCT`
- `WHERE`
- `LEFT JOIN`
- `CASE WHEN`
- `CAST`
- `LEFT`
- `ISNULL`
- Column aliases
- Table aliases
- `ORDER BY`

Customer data was enriched with geographic information.

Product data was combined with product category and product subcategory information.

The Date Dimension was prepared for time-based reporting.

Internet sales transactions were filtered, cleaned, and transformed before being loaded into Power BI.

---

# Data Model Review

The Power BI data model follows a **star-schema-style structure**.

The main Dimension Tables are:

- `Dim_Product`
- `Dim_Customer`
- `Dim_Date`

These Dimension Tables are connected to the central Fact Table:

- `Fact_Sales`

The `Budget` table is connected to `Dim_Date` and is used to compare **Actual Sales vs. Budget**.

A separate Measurements Table is used to organize important DAX measures such as:

- Total Sales
- Count Customers
- Count Orders
- Count Products
- Other sales-related measures

![Model Review](https://github.com/DucTung269/Sales-Management/blob/main/Images/Model%20View.png?raw=true)

---

# Dashboard Overview and Analysis

## 1. Sales Overview

![Sales Overview](https://github.com/DucTung269/Sales-Management/blob/main/Images/Sales__Overview.png?raw=true)

The **Sales Overview Dashboard** provides a high-level overview of company sales performance from **2019 to 2021**.

### Main KPIs

- **Total Sales:** €22.22M
- **Number of Customers:** 18,484
- **Number of Orders:** 58,159

### Key Insights

- Bikes generate approximately **95.32% of total sales**.
- Accessories contribute approximately **3.15% of total sales**.
- Clothing represents only a small percentage of total sales.
- Monthly sales generally increase throughout the year.
- Sales reach their highest monthly level in **December**, at approximately **€2.50M**.
- Customer locations are concentrated mainly in **North America and Europe**.
- Additional customers are located in Australia and other regions.
- **Mountain-200 Black, 46** is the highest-selling product shown in the Top 10 Products chart, generating approximately **€1.37M** in sales.
- **Jordan Turner** is the highest-spending customer shown in the Top 10 Customers chart, with approximately **€16K** in sales.

### Dashboard Filters

Users can interact with the dashboard using the following filters:

- Year
- Month
- Product Name
- Product Category
- Product Subcategory
- Customer City

---

## 2. Sales KPI 2020

![Sales KPI](https://github.com/DucTung269/Sales-Management/blob/main/Images/Sales__KPI.png?raw=true)

The **Sales KPI Dashboard** compares actual sales with the company sales budget for **2020**.

### Main KPIs

- **Total Sales:** €16.35M
- **Total Budget:** €15.00M
- **Number of Orders:** 52,801
- **Sales above Budget:** approximately €1.35M

### Key Insights

- Total actual sales exceeded the annual budget by approximately **€1.35M**.
- Actual sales were below the monthly target in:
  - February
  - July
  - September
  - December
- Strong sales performance in other months helped the company finish the year above its annual target.
- Particularly strong months included:
  - May
  - June
  - August
  - October
  - November

The line chart provides an easy comparison between:

- **Actual Sales**
- **Sales Target / Budget**

This helps identify months in which the company exceeded or missed its sales target.

---

## 3. Product Details

![Product Details](https://github.com/DucTung269/Sales-Management/blob/main/Images/Product__Details.png?raw=true)

The **Product Details Dashboard** focuses on product-level sales performance.

### Main KPIs

- **Total Sales:** €22.22M
- **Number of Products:** 606

### Key Insights

- The dataset contains **606 different products**.
- Bikes generate the largest share of total sales.
- The Top 10 Products chart identifies the products that generate the highest sales revenue.
- **Mountain-200 Black, 46** is the highest-selling product shown on the dashboard.
- The Product Matrix shows sales for each product by month.
- Users can compare product sales from **January to December**.
- The matrix also displays the total sales generated by each product.

The Product Details Dashboard helps analyze:

- Product-level performance
- Monthly product sales
- Best-selling products
- Geographic distribution
- Total product sales

---

## 4. Customer Details

![Customer Details](https://github.com/DucTung269/Sales-Management/blob/main/Images/Customer__Details.png?raw=true)

The **Customer Details Dashboard** provides detailed information about customer behavior and transactions.

### Main KPIs

- **Total Sales:** €22.22M
- **Number of Customers:** 18,484

### Customer Transaction Analysis

The Customer Transactions table contains information such as:

- Customer Name
- Date of Birth
- Product Name
- Order Quantity
- Order Date
- Transaction information

The customer matrix shows how much each customer spent during each month.

It also calculates the total amount spent by each customer during the analyzed period.

### Key Insights

This dashboard can be used to:

- Analyze individual customer purchasing behavior
- Identify high-value customers
- Review which products customers purchased
- Compare customer spending across different months
- Analyze customer locations
- Review detailed customer transactions

---

# Main Business Insights

The dashboard provides several important business insights:

- The company generated approximately **€22.22M in total sales**.
- The company served **18,484 customers**.
- The company processed **58,159 orders**.
- Bikes account for more than **95% of total sales**.
- Sales generally increase toward the end of the year.
- December has the highest monthly sales in the Sales Overview.
- The company exceeded its **2020 annual sales budget by approximately €1.35M**.
- Mountain-200 bicycle models are among the strongest-performing products.
- Customer locations are concentrated mainly in **North America and Europe**.
- Product and customer performance can be analyzed interactively using dashboard filters.

---

# Dashboard Features

The Power BI report includes:

- Interactive Year slicers
- Interactive Month slicers
- Product Name filters
- Product Category filters
- Product Subcategory filters
- Customer City filters
- Clear Filters buttons
- KPI cards
- Top 10 Customers chart
- Top 10 Products chart
- Monthly Sales Trend
- Actual Sales vs. Budget comparison
- Geographic customer map
- Product Sales Matrix
- Customer Sales Matrix
- Customer Transactions table

---

# Skills Demonstrated

This project demonstrates practical experience with:

- SQL
- SQL Server Management Studio
- Data Extraction
- Data Cleaning
- Data Transformation
- Microsoft Excel
- Power Query
- Relational Data Modeling
- Star Schema
- Power BI
- DAX
- KPI Reporting
- Sales Analysis
- Customer Analysis
- Product Analysis
- Budget Variance Analysis
- Business Intelligence
- Data Visualization

---

# Project Workflow

```text
AdventureWorks Database
        ↓
SQL Server Management Studio
        ↓
Data Extraction & Cleaning
        ↓
Excel Files
        ↓
Power Query
        ↓
Data Transformation
        ↓
Power BI Data Model
        ↓
DAX Measures
        ↓
Interactive Dashboards
        ↓
Business Analysis & Insights
```

---

# Repository Structure

```text
Sales-Management/
│
├── Images/
│   ├── Model View.png
│   ├── Sales__Overview.png
│   ├── Sales__KPI.png
│   ├── Product__Details.png
│   └── Customer__Details.png
│
├── SQL/
│   └── SQL Queries
│
├── Data/
│   └── Excel Files
│
├── Power BI/
│   └── Power BI Dashboard
│
└── README.md
```

> The repository structure can be adjusted depending on the files available in the project.

---

# Repository

[Sales Management – GitHub Repository](https://github.com/DucTung269/Sales-Management)

---

# Author

**Duc Tung**

Data Analytics Portfolio Project
