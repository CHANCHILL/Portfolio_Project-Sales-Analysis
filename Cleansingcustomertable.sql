SELECT 
      CustomerKey AS [CustomerKey],
      --[GeographyKey],
      --[CustomerAlternateKey],
      --[Title],
      FirstName AS [First Name],
      --MiddleName,
      LastName As [Last Name],
	  --CONCAT(FirstName,' ',LastName) AS [Full Name],
	FirstName +' '+LastName AS [Full Name],
      --[NameStyle],
      --[BirthDate],
      --[MaritalStatus],
      --[Suffix],
	  CASE Gender WHEN 'F' THEN 'FEMALE' WHEN 'M' THEN 'MALE' END AS [GENDER],
      EmailAddress,
      --[YearlyIncome],
      --[TotalChildren],
      --[NumberChildrenAtHome],
      --[EnglishEducation],
      --[SpanishEducation],
      --[FrenchEducation],
      --[EnglishOccupation],
      --[SpanishOccupation],
      --[FrenchOccupation],
      --[HouseOwnerFlag],
      --[NumberCarsOwned],
      AddressLine1 AS [Address],
      --[AddressLine2],
      DateFirstPurchase AS [Date FirstPurchase],
      --[CommuteDistance]
	  Phone,
	  g.City AS [Customer City] -- customer city joined from dimGeography table 
  FROM AdventureWorksDW2019.dbo.DimCustomer AS c
  LEFT JOIN AdventureWorksDW2019.dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY
  CustomerKey ASC  ---Ordered List by Customer Key
