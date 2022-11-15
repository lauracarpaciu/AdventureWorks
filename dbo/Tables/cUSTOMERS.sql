CREATE TABLE [dbo].[cUSTOMERS] (
    [SalesOrderNumber]      NVARCHAR (20)  NOT NULL,
    [SalesOrderLineNumber]  TINYINT        NOT NULL,
    [CustomerKey]           INT            NOT NULL,
    [ProductKey]            INT            NOT NULL,
    [OrderDateKey]          INT            NOT NULL,
    [DueDateKey]            INT            NOT NULL,
    [ShipDateKey]           INT            NULL,
    [PromotionKey]          INT            NOT NULL,
    [CurrencyKey]           INT            NOT NULL,
    [SalesTerritoryKey]     INT            NOT NULL,
    [OrderQuantity]         SMALLINT       NOT NULL,
    [UnitPrice]             MONEY          NOT NULL,
    [ExtendedAmount]        MONEY          NOT NULL,
    [UnitPriceDiscountPct]  DECIMAL (7, 4) NOT NULL,
    [DiscountAmount]        FLOAT (53)     NOT NULL,
    [ProductStandardCost]   MONEY          NOT NULL,
    [TotalProductCost]      MONEY          NOT NULL,
    [SalesAmount]           MONEY          NOT NULL,
    [TaxAmount]             MONEY          NOT NULL,
    [FreightAmount]         MONEY          NOT NULL,
    [CarrierTrackingNumber] NVARCHAR (25)  NULL,
    [CustomerPONumber]      NVARCHAR (25)  NULL,
    [RevisionNumber]        TINYINT        NOT NULL
);
GO

