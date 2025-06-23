SELECT [DateKey],
      FullDateAlternateKey AS [Date],
      --[DayNumberOfWeek]
      EnglishDayNameOfWeek AS [Month],
      --[SpanishDayNameOfWeek],
      --[FrenchDayNameOfWeek],
      --[DayNumberOfMonth],
      --[DayNumberOfYear],
      --[WeekNumberOfYear],
      EnglishMonthName AS [Month],
	  --[SpanishMonthName],
      --[FrenchMonthName],
      MonthNumberOfYear AS [MonthNo],
      CalendarQuarter AS [Quarter],
      --[CalendarSemester],
      --[FiscalQuarter],
      --[FiscalYear],
      --FiscalSemester
	CalendarYear AS [Year]
  FROM 
  AdventureWorksDW2019.dbo.DimDate
  WHERE
  CalendarYear >=2022