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
SELECT * FROM cars;

-- •⁠  ⁠⁠List all rented cars
SELECT * FROM cars
WHERE AVAILABILITY = 'AVAILABLE';

-- •⁠  ⁠⁠Find particular user of any car
SELECT customer.*, booking.BOOK_ID, booking.CAR_ID
FROM customer
INNER JOIN booking ON customer.CustomerID = booking.CustomerID


/*add*/
-- •⁠  ⁠Add new customer
INSERT INTO customer (FNAME, LNAME, EMAIL, LICENSE_NO, PHONE_NO, PASSWORD, GENDER)
VALUES ('FNAME', 'LNAME', 'EMAIL', 'LICENSE_NO', 'PHONE_NO', 'PASSWORD', 'GENDER');

-- •⁠  Add new booking
INSERT INTO `booking` (BOOK_ID, CAR_ID, EMAIL, BOOK_LOCATION, BOOK_DATE, DURATION, PHONE_NO, DESTINATION, RETURN_DATE, AMOUNT, STATUS)
VALUES ('BOOK_ID', 'CAR_ID', 'EMAIL', 'BOOK_LOCATION', 'BOOK_DATE', 'DURATION', 'PHONE_NO', 'DESTINATION', 'RETURN_DATE', 'AMOUNT', 'STATUS');


/*modify*/
UPDATE customer
SET FNAME = 'FNAME', LNAME = 'LNAME', EMAIL = 'EMAIL', LICENSE_NO = 'LICENSE_NO', PHONE_NO = 'PHONE_NO', PASSWORD = 'PASSWORD', GENDER = 'GENDER'
WHERE CustomerID = 'CustomerID';

UPDATE booking
SET BOOK_ID = 'BOOK_ID', CAR_ID = 'CAR_ID', EMAIL = 'EMAIL', BOOK_LOCATION, BOOK_DATE, DURATION, PHONE_NO, DESTINATION, RETURN_DATE, AMOUNT, STATUS
WHERE BOOK_ID = 'BOOK_ID';


/*remove*/
-- •⁠  Remove customer
DELETE FROM customer
WHERE CustomerID = 'CustomerID';

-- •⁠  Remove a booking and associated payment:
DELETE FROM booking
WHERE BOOK_ID = 'BOOK_ID';

DELETE FROM payment
WHERE BOOK_ID = 'BOOK_ID';
