CREATE TABLE [dbo].[FactResellerSales] (
    [SalesOrderNumber]      NVARCHAR (20)  NOT NULL,
    [SalesOrderLineNumber]  TINYINT        NOT NULL,
    [ResellerKey]           INT            NOT NULL,
    [ProductKey]            INT            NOT NULL,
    [OrderDateKey]          INT            NOT NULL,
    [DueDateKey]            INT            NOT NULL,
    [ShipDateKey]           INT            NULL,
    [EmployeeKey]           INT            NOT NULL,
    [PromotionKey]          INT            NOT NULL,
    [CurrencyKey]           INT            NOT NULL,
    [SalesTerritoryKey]     INT            NOT NULL,
    [OrderQuantity]         SMALLINT       NOT NULL,
    [UnitPrice]             MONEY          NOT NULL,
    [ExtendedAmount]        MONEY          NOT NULL,
    [UnitPriceDiscountPct]  DECIMAL (7, 4) NOT NULL,
    [DiscountAmount]        MONEY          NOT NULL,
    [ProductStandardCost]   MONEY          NOT NULL,
    [TotalProductCost]      MONEY          NOT NULL,
    [SalesAmount]           MONEY          NOT NULL,
    [TaxAmount]             MONEY          NOT NULL,
    [FreightAmount]         MONEY          NOT NULL,
    [CarrierTrackingNumber] NVARCHAR (25)  NULL,
    [CustomerPONumber]      NVARCHAR (25)  NULL,
    [RevisionNumber]        TINYINT        NOT NULL,
    CONSTRAINT [PK_FactResellerSales_SalesOrderNumber_SalesOrderLineNumber] PRIMARY KEY CLUSTERED ([SalesOrderNumber] ASC, [SalesOrderLineNumber] ASC),
    CONSTRAINT [FK_FactResellerSales_DimCurrency] FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey]),
    CONSTRAINT [FK_FactResellerSales_DimDate] FOREIGN KEY ([OrderDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactResellerSales_DimDate1] FOREIGN KEY ([DueDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactResellerSales_DimDate2] FOREIGN KEY ([ShipDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactResellerSales_DimEmployee] FOREIGN KEY ([EmployeeKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]),
    CONSTRAINT [FK_FactResellerSales_DimProduct] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]),
    CONSTRAINT [FK_FactResellerSales_DimPromotion] FOREIGN KEY ([PromotionKey]) REFERENCES [dbo].[DimPromotion] ([PromotionKey]),
    CONSTRAINT [FK_FactResellerSales_DimReseller] FOREIGN KEY ([ResellerKey]) REFERENCES [dbo].[DimReseller] ([ResellerKey]),
    CONSTRAINT [FK_FactResellerSales_DimSalesTerritory] FOREIGN KEY ([SalesTerritoryKey]) REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
);


GO

