/*
Write a script to create two functions. 
Example:
•⁠  ⁠Calculate how much renter have to pay for a certain period of renting a car
•⁠  ⁠⁠Calculate anything from the table for the total of the calculation.
Demonstrate the functions from anonymous block (refer Function slides)
*/

-- Function to calculate rent for a certain period
CREATE FUNCTION CalculateRent(
    carRatePerDay DOUBLE,
    duration INT
)
RETURNS DOUBLE
BEGIN
    DECLARE totalRent DOUBLE;
    SET totalRent = carRatePerDay * duration;
    RETURN totalRent;
END //


-- Function to calculate the total of a specified column in a table
CREATE FUNCTION CalculateTotal(
    tableName VARCHAR(255),
    columnName VARCHAR(255)
)
RETURNS DOUBLE
BEGIN
    DECLARE total DOUBLE;
    SET total = (SELECT SUM(columnValue) FROM tableName);   
    RETURN total;
END //
