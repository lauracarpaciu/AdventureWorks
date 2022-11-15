CREATE FUNCTION [dbo].[udfDimProd] (
    @color NVARCHAR
)
RETURNS TABLE
AS
RETURN
    SELECT 
        Color,
        Class,
        Style,
        ModelName,
        [Status]
    FROM
        dbo.DimProduct
    WHERE
        color = @color;
GO

