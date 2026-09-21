-- Check the distinct values in the Gender column of the DimCustomer table
SELECT DISTINCT
    Gender
FROM [AdventureWorksDW2025].[dbo].[DimCustomer];


-- Retrieve customer information and corresponding geographic details
SELECT
      c.[CustomerKey]
    , c.[GeographyKey]
    , c.[CustomerAlternateKey]
    --, c.[Title]
    , c.[FirstName] AS [First Name]
    --, c.[MiddleName]
    , c.[LastName] AS [Last Name]
    --, c.[NameStyle]
    , c.[BirthDate] AS [Birth Date]
    --, c.[MaritalStatus]
    --, c.[Suffix]

    -- Convert gender codes into readable labels
    , CASE
          WHEN c.[Gender] = 'M' THEN 'Male'
          WHEN c.[Gender] = 'F' THEN 'Female'
          ELSE 'Unknown'
      END AS [Gender]

    , c.[EmailAddress] AS [Email Address]
    --, c.[YearlyIncome]
    --, c.[TotalChildren]
    --, c.[NumberChildrenAtHome]
    --, c.[EnglishEducation]
    --, c.[SpanishEducation]
    --, c.[FrenchEducation]
    --, c.[EnglishOccupation]
    --, c.[SpanishOccupation]
    --, c.[FrenchOccupation]
    --, c.[HouseOwnerFlag]
    --, c.[NumberCarsOwned]

    , c.[AddressLine1] AS [Address 1]
    , c.[AddressLine2] AS [Address 2]
    , c.[Phone]
    , c.[DateFirstPurchase] AS [Date First Purchase]
    --, c.[CommuteDistance]

    -- Add geographic information from the DimGeography table
    , g.[City]
    , g.[StateProvinceName] AS [State]               -- Rename column to State
    , g.[EnglishCountryRegionName] AS [Country]     -- Rename column to Country
    , g.[PostalCode] AS [Postal Code]

FROM [AdventureWorksDW2025].[dbo].[DimCustomer] AS c

-- Use LEFT JOIN to keep all customers, even if geographic information is missing
LEFT JOIN [AdventureWorksDW2025].[dbo].[DimGeography] AS g
    ON c.[GeographyKey] = g.[GeographyKey]

-- Sort the results by CustomerKey in ascending order
ORDER BY
    c.[CustomerKey] ASC;