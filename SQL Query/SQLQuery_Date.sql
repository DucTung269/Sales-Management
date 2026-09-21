-- Retrieve date information for reporting and time-based analysis
SELECT
      d.[DateKey]
    , d.[FullDateAlternateKey] AS [Date]
    , d.[DayNumberOfWeek]
    , d.[EnglishDayNameOfWeek] AS [Day]

    --, d.[SpanishDayNameOfWeek]
    --, d.[FrenchDayNameOfWeek]
    --, d.[DayNumberOfMonth]
    --, d.[DayNumberOfYear]
    --, d.[WeekNumberOfYear]

    , d.[EnglishMonthName] AS [Month]

    -- Create a shortened month name, e.g. January -> Jan
    , LEFT(d.[EnglishMonthName], 3) AS [Month Short]

    --, d.[SpanishMonthName]
    --, d.[FrenchMonthName]
    --, d.[MonthNumberOfYear]

    , d.[CalendarQuarter] AS [Quarter]
    , d.[CalendarYear] AS [Year]

    --, d.[CalendarSemester]
    --, d.[FiscalQuarter]
    --, d.[FiscalYear]
    --, d.[FiscalSemester]

FROM [AdventureWorksDW2025].[dbo].[DimDate] AS d

-- Include only dates from 2019 onwards
WHERE
    d.[CalendarYear] >= 2019

-- Sort dates chronologically
ORDER BY
    d.[DateKey] ASC;