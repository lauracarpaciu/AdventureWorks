CREATE FUNCTION [dbo].[udfNetSale](
    @OrderQuantity INT,
    @UnitPrice DEC(10,2),
    @UnitPriceDiscountPct DEC(4,2)
)
RETURNS DEC(10,2)
AS 
BEGIN
    RETURN @OrderQuantity * @UnitPrice * (1 - @UnitPriceDiscountPct);
END;
GO

