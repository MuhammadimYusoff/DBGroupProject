/*
Write a script to create two functions. 
Example:
•⁠  ⁠Calculate how much renter have to pay for a certain period of renting a car
•⁠  ⁠⁠Calculate anything from the table for the total of the calculation.
Demonstrate the functions from anonymous block (refer Function slides)
*/

-- Create a function to calculate rent for a certain period
CREATE FUNCTION dbo.CalculateRent(
    @carID INT,
    @numberOfDays INT
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @rent DECIMAL(10, 2);

    SELECT @rent = RentalRatePerDay * @numberOfDays
    FROM car
    WHERE CarID = @carID;

    RETURN @rent;
END;
GO

-- Create a function to calculate total from a table for a specific calculation
CREATE FUNCTION dbo.CalculateTotal(
    @tableName NVARCHAR(255),
    @columnName NVARCHAR(255)
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @total DECIMAL(10, 2);

    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'SELECT @total = SUM(' + QUOTENAME(@columnName) + ') FROM ' + QUOTENAME(@tableName);

    EXEC sp_executesql @sql, N'@total DECIMAL(10, 2) OUTPUT', @total OUTPUT;

    RETURN @total;
END;
GO
