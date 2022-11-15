CREATE PROCEDURE [dbo].[uspDimCustomers](
    @min_YearlyIncome AS MONEY
    ,@max_YearlyIncome AS MONEY
    ,@name AS NCHAR(1)

)
AS
BEGIN
    SELECT
        YearlyIncome,
        DateFirstPurchase,
        Gender,
        MaritalStatus,
        TotalChildren,
        NumberCarsOwned,
        NumberCarsOwned


    FROM 
        dbo.DimCustomer
    WHERE
        YearlyIncome >= @min_YearlyIncome AND
        YearlyIncome <= @max_YearlyIncome AND
        MaritalStatus LIKE '%' + @name + '%'
    ORDER BY
        YearlyIncome;
END;
GO

