/*
Write a script to create two procedures.
Example:
•⁠  ⁠Add new car and customer
•⁠  Retrieve details for a specific car
•⁠  Update the status of booking
*Bonus mark for complex query
*/

--procedure 1: add new car and customer
CREATE PROCEDURE add_new_car_customer (
    IN p_car_name VARCHAR(255),
    IN p_car_fuel VARCHAR(255),
    IN p_car_capacity INT,
    in p_rate_per_day DOUBLE,
    IN p_car_img VARCHAR(255),
    IN p_availability VARCHAR(255)
    IN p_f_name VARCHAR(255),
    IN p_l_name VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_licence_no VARCHAR(100),
    IN p_phone_no INT,
    IN p_password VARCHAR(255)
    IN p_gender VARCHAR(50)
)
BEGIN
    -- add new car
    INSERT INTO cars (CAR_NAME, CAR_FUEL, CAR_CAPACITY, RATE_PER_DAY, CAR_IMG, AVAILABILITY)
    VALUES (p_car_name, p_car_fuel, p_car_capacity, p_rate_per_day, p_car_img, p_availability)
    
    -- add new customer
    INSERT INTO customers (F_NAME, L_NAME, EMAIL, LICENCE_NO, PHONE_NO, PASSWORD, GENDER)
    VALUES (p_f_name, p_l_name, p_email, p_licence_no, p_phone_no, p_password, p_gender);
END//


--procedure 2: retrieve details for a specific car
CREATE PROCEDURE retrieve_car_details (
    IN p_car_id INT
)
BEGIN
    SELECT * from cars
    WHERE CAR_ID = p_car_id;
END//


--procedure 3: update the status of booking
CREATE PROCEDURE update_booking_status (
    IN p_booking_id INT,
    IN new_status VARCHAR(255)
    )
BEGIN
    UPDATE booking
    SET Status = new_status
    WHERE BOOK_ID = p_booking_id;
END//




