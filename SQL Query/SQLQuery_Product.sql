-- Retrieve product information together with category and subcategory details
SELECT
      p.[ProductKey]
    , p.[ProductAlternateKey]
    , p.[ProductSubcategoryKey]

    --, p.[WeightUnitMeasureCode]
    --, p.[SizeUnitMeasureCode]

    , p.[EnglishProductName] AS [Product Name]

    -- Add product category and subcategory names for easier analysis
    , pc.[EnglishProductCategoryName] AS [Product Category Name]
    , ps.[EnglishProductSubcategoryName] AS [Product Subcategory Name]

    --, p.[SpanishProductName]
    --, p.[FrenchProductName]
    --, p.[StandardCost]
    --, p.[FinishedGoodsFlag]

    , p.[Color] AS [Product Color]
    , p.[SafetyStockLevel]

    --, p.[ReorderPoint]
    --, p.[ListPrice]

    , p.[Size]

    --, p.[SizeRange]

    , p.[Weight]

    --, p.[DaysToManufacture]

    , p.[ProductLine] AS [Product Line]

    --, p.[DealerPrice]
    --, p.[Class]
    --, p.[Style]

    , p.[ModelName] AS [Product Model Name]

    --, p.[LargePhoto]

    , p.[EnglishDescription] AS [Product Description]

    --, p.[FrenchDescription]
    --, p.[ChineseDescription]
    --, p.[ArabicDescription]
    --, p.[HebrewDescription]
    --, p.[ThaiDescription]
    --, p.[GermanDescription]
    --, p.[JapaneseDescription]
    --, p.[TurkishDescription]

    , p.[StartDate]
    , p.[EndDate]

    -- Replace NULL product status with 'Outdated'
    , ISNULL(p.[Status], 'Outdated') AS [Product Status]

FROM [AdventureWorksDW2025].[dbo].[DimProduct] AS p

-- Join product subcategory information
LEFT JOIN [AdventureWorksDW2025].[dbo].[DimProductSubcategory] AS ps
    ON p.[ProductSubcategoryKey] = ps.[ProductSubcategoryKey]

-- Join product category information through the subcategory table
LEFT JOIN [AdventureWorksDW2025].[dbo].[DimProductCategory] AS pc
    ON ps.[ProductCategoryKey] = pc.[ProductCategoryKey]

-- Sort products by ProductKey in ascending order
ORDER BY
    p.[ProductKey] ASC;