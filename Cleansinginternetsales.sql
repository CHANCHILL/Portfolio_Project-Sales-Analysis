SELECT 
      ProductKey,
	  OrderDateKey,
      DueDateKey,
      ShipDateKey,
      CustomerKey,
      --[PromotionKey],
      --[CurrencyKey],
      --[SalesTerritoryKey],
      SalesOrderNumber AS [SALES ORDER],
      --[SalesOrderLineNumber],
      --[RevisionNumber],
      OrderQuantity AS [Order Quantity],
      UnitPrice AS [Product Price],
      --[ExtendedAmount],
      UnitPriceDiscountPct,
      DiscountAmount AS [Discount Value],
      --[ProductStandardCost],
      --[TotalProductCost],
      SalesAmount AS [Sales Value],
      --[TaxAmt],
      --[Freight],
      --[CarrierTrackingNumber],
      CustomerPONumber AS [Customer PO number],
      OrderDate AS [Order Date],
      DueDate AS [Planned Date],
      ShipDate AS [Delivery Date]-- assuming all shipping dates are equivalent to delivery dates
  FROM AdventureWorksDW2019.dbo.FactInternetSales
  Where
  LEFT (OrderDateKey,4) >= Year(getdate())-2 --extraction of orders 2 years (2022 onwards) from today
  ORDER BY 
  OrderDateKey ASC
