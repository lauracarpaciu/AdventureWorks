CREATE VIEW dbo.FactResellerSale
AS
SELECT
    OrderQuantity, 
    UnitPrice, 
    DiscountAmount,
    ProductStandardCost,
    TotalProductCost,
    SalesAmount,
    TaxAmount
FROM
    dbo.FactResellerSales;
GO

