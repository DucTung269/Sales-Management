-- Retrieve Internet sales transactions from 2019 onwards
SELECT
      f.[ProductKey]
    , f.[OrderDateKey]
    , f.[DueDateKey]
    , f.[ShipDateKey]
    , f.[CustomerKey]

    --, f.[PromotionKey]
    --, f.[CurrencyKey]
    --, f.[SalesTerritoryKey]

    , f.[SalesOrderNumber]

    --, f.[SalesOrderLineNumber]
    --, f.[RevisionNumber]
    --, f.[OrderQuantity] AS [Order Quantity]
    --, f.[UnitPrice] AS [Unit Price]
    --, f.[ExtendedAmount] AS [Amount]
    --, f.[UnitPriceDiscountPct]
    --, f.[DiscountAmount] AS [Discount Amount]
    --, f.[ProductStandardCost] AS [Product Standard Cost]
    --, f.[TotalProductCost] AS [Total Product Cost]

    , f.[SalesAmount] AS [Sales Amount]

    --, f.[TaxAmt]
    --, f.[Freight]
    --, f.[CarrierTrackingNumber]
    --, f.[CustomerPONumber]

    , CAST(f.[OrderDate] AS DATE) AS [Order Date]

    --, f.[DueDate]

    , CAST(f.[ShipDate] AS DATE) AS [Ship Date]

FROM [AdventureWorksDW2025].[dbo].[FactInternetSales] AS f

-- Include only sales transactions from 2019 onwards
WHERE
    f.[OrderDateKey] >= 20190101

-- Sort transactions chronologically by order date
ORDER BY
    f.[OrderDateKey] ASC;