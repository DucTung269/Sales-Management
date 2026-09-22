# Sales-Management


---
### Projektdetails  

- **Data Source:** Google AdventureWorks Sample Data Base : Click hier to see the link and download [AdventureWorks](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms)
- **Tools Used:**
  - Microsoft Excel
  - Power Query
  - SQL Management Studio (SSMS)
  - Power BI
  - DAX Functions
- **Tasks Performed:**
  - Using SQL to cleaning data
  - Transforming data into Excel Files
  - Transform Data by using Power Query and Using DAX Functions for Measurements 
  - Creating Dashboards using Power BI for visualising and reporting

- **SQL Techniques and Functions Used** : Data extraction and transformation using SELECT, DISTINCT, WHERE, LEFT JOIN, CASE WHEN, CAST, LEFT, ISNULL, column/table aliases, and ORDER BY. Customer data was enriched with geographic information, product data was combined with category and subcategory hierarchies, date dimensions were prepared for time-based reporting, and Internet sales transactions were filtered and transformed for Power BI analysis.

- **Model Review**: Tables were cleaned and extracted after using SQL Queries. Dimension Tables such as Dim_Customers, Dim_Date and Dim_Products connect to Fact Table Fact_Sales.

![Model Review](https://github.com/DucTung269/Sales-Management/blob/main/Images/Model%20View.png?raw=true)

- **Dashboard Overview and Analysis**
  
![Sales Overview](https://github.com/DucTung269/Sales-Management/blob/main/Images/Sales__Overview.png?raw=true)

- From 2019 to 2021 the company has 29,36 Mio Euro in sales, got 18484 customers over 60398 oders. The most part of sales is bike with 96,46% of sales, follow by Accessories with 4% of sales. The sales of company increased over time and got it peaks around 2.5 mio Euro in Dezember. Most part of the market sales locate in North America and Europe. Mountain-200 black 46 bike is the popular product. Jordan Turner is the customer who spend the most round 16.000 Euro. 



![Sales KPI](https://github.com/DucTung269/Sales-Management/blob/main/Images/Sales__KPI.png?raw=true)

- In 2020 the company had 16,35 Mio Euro in sales over 52801 orders, which is exceed the sales target 15 Mio. Although the actual sales in Dezember, Juli and September is less than target sales, but in total still more than 1,35 Mio Euro. 

![Product Details](https://github.com/DucTung269/Sales-Management/blob/main/Images/Product__Details.png?raw=true)

- The company has totally 606 different products and most of them are bike. The table shows the sales for each product monthly and the total sales each month and for each product.

![Customer Details](https://github.com/DucTung269/Sales-Management/blob/main/Images/Customer__Details.png?raw=true)

- The company hat 18484 customers. The table on the right side show the customer transactions, it showes the information of customer like Name, Birth of Date, Adress, what they bought and how much they the spent. The table under show how much the customers spent totally from 2019 to 2021.
