SELECT ProductKey,
      ProductAlternateKey AS [Product Code],
      psc.EnglishProductSubcategoryName AS [Sub Category],
      --[WeightUnitMeasureCode],
      --[SizeUnitMeasureCode],
      EnglishProductName AS [Product Name],
      --[SpanishProductName],
      --[FrenchProductName],
      --[StandardCost],
      --[FinishedGoodsFlag],
      Color AS [Product Color],
      --[SafetyStockLevel],
      --[ReorderPoint],
      --[ListPrice]
      Size AS [Product Size],
      --[SizeRange],
      --[Weight],
      --[DaysToManufacture],
      ProductLine AS [Product Line],
      --[DealerPrice],
      --[Class],
      --[Style],
      ModelName AS [Product Model Name],
      --[LargePhoto],
      EnglishDescription AS [Product Description],
      --[FrenchDescription],
      --[ChineseDescription],
      --[ArabicDescription],
      --[HebrewDescription],
      --[ThaiDescription],
      --[GermanDescription],
      --[JapaneseDescription],
      --[TurkishDescription],
      --[StartDate],
      --[EndDate],
      Status AS [Current Status], 
	  ISNULL (Status, 'Outdate') AS [Product Status]
  FROM AdventureWorksDW2019.dbo.DimProduct AS c
  LEFT JOIN AdventureWorksDW2019.dbo.DimProductSubcategory AS psc
  ON c.ProductSubcategoryKey = psc.ProductSubcategoryKey
  ORDER BY 
  ProductKey ASC
  

