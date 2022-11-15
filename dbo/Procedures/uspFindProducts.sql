CREATE PROCEDURE [dbo].[uspFindProducts](@min_QTY AS INT)
AS
BEGIN
    SELECT
        EnglishPromotionName,
        SpanishPromotionName,
        FrenchPromotionName,
        StartDate,
        EndDate,
        MinQty

        
    FROM 
        dbo.DimPromotion
    WHERE
        MinQty >= @min_QTY
    ORDER BY
        MinQty;
END;
GO

