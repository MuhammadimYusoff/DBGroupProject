/*
Write some SQL statements that allow you to query, add, modify and remove some data (CRUD Operation). 

Examples: 
•⁠  ⁠List all cars in the database
•⁠  ⁠⁠List all rented cars
•⁠  ⁠⁠Find particular user of any car
•⁠  ⁠⁠Allow to add, modify and remove some details of customer
•⁠  ⁠⁠Allow to add, modify and remove customer

*/

/*query*/
-- •⁠  ⁠List all cars in the database
SELECT * FROM car;

-- •⁠  ⁠⁠List all rented cars
SELECT * FROM rentaltransaction;

-- •⁠  ⁠⁠Find particular user of any car
SELECT * FROM rentaltransaction 
WHERE CustomerID = 'customer_id';

/*add*/
INSERT INTO car (Model, Year, Color, RegistrationNumber, RentalRatePerDay)
VALUES ('Model', 'Year', 'Color', 'RegistrationNumber', 'RentalRatePerDay');

INSERT INTO rentaltransaction (CustomerID, CarID, RentalDate, ReturnDate, TotalRentalCost)
VALUES ('CustomerID', 'CarID', 'RentalDate', 'ReturnDate', 'TotalRentalCost');

/*modify*/
UPDATE car
SET Model = 'Model', Year = 'Year', Color = 'Color', RegistrationNumber = 'RegistrationNumber', RentalRatePerDay = 'RentalRatePerDay';

UPDATE rentaltransaction
SET CustomerID = 'CustomerID', CarID = 'CarID', RentalStartDate = 'RentalStartDate', RentalEndDate = 'RentalEndDate', TotalCost = 'TotalCost';

UPDATE rentaltransaction
SET RentalEndDate = 'RentalEndDate'
WHERE CustomerID = 'CustomerID';

/*remove*/
DELETE FROM car 
WHERE CarID = 'CarID';

DELETE FROM rentaltransaction
WHERE TransactionID = 'TransactionID';

DELETE FROM customer
WHERE CustomerID = 'CustomerID';
