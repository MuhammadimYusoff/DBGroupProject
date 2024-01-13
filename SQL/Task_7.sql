/*
Write a script to create two procedures.
Example:
•⁠  ⁠Add new car and renter
•⁠  ⁠Second procedure will retrieve specific car
*Bonus mark for complex query
*/

--procedure 1: add new car and renter
CREATE PROCEDURE add_car_renter (
    IN p_model VARCHAR(30),
    IN p_year DATE,
    IN p_color TEXT,
    IN p_registration_number INT(10),
    IN p_rental_rate_per_day DOUBLE,
    IN p_first_name VARCHAR(30),
    IN p_last_name VARCHAR(30),
    IN p_address VARCHAR(100),
    IN p_email VARCHAR(30),
    IN p_phone INT,
    IN p_license_number VARCHAR(12)
)
BEGIN
    DECLARE car_id INT;
    DECLARE customer_id INT;

    --add new car
    INSERT INTO car (Model, Year, Color, RegistrationNumber, RentalRatePerDay)
    VALUES (p_model, p_year, p_color, p_registration_number, p_rental_rate_per_day);
    SET car_id = LAST_INSERT_ID();

    --add new renter
    INSERT INTO customer (FirstName, LastName, Address, Email, Phone, LicenseNumber)
    VALUES (p_first_name, p_last_name, p_address, p_email, p_phone, p_license_number);
    SET customer_id = LAST_INSERT_ID();

END//


--procedure 2: retrieve specific car
CREATE PROCEDURE retrieve_car (
    IN p_car_id INT
)
BEGIN
    SELECT * FROM car 
    WHERE CarID = p_car_id;
END//


