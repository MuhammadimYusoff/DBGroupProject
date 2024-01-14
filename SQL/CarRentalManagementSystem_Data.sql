-- Task 5--

-- Insert 10 rows into 'admin' table
INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_PASSWORD`)
VALUES
('admin1', 'password1'),
('admin2', 'password2'),
('admin3', 'password3'),
('admin4', 'password4'),
('admin5', 'password5'),
('admin6', 'password6'),
('admin7', 'password7'),
('admin8', 'password8'),
('admin9', 'password9'),
('admin10', 'password10');


-- Insert 10 rows into 'cars' table
INSERT INTO `cars` (`CAR_ID`, `CAR_NAME`, `CAR_FUEL`, `CAPACITY`, `RATE_PER_DAY`, `CAR_IMG`, `AVAILABILITY`)
VALUES
(101, 'Perodua Myvi', 'Petrol', 5, 50.00, 'myvi.jpg', 'AVAILABLE'),
(102, 'Hilux', 'Diesel', 4, 45.00, 'hilux.jpg', 'AVAILABLE'),
(103, 'Toyota Vios', 'Petrol', 7, 60.00, 'vios.jpg', 'AVAILABLE'),
(104, 'Honda Jazz Hybrid', 'Hybrid', 5, 55.00, 'jazz.jpg', 'AVAILABLE'),
(105, 'Nissan Almera', 'Petrol', 6, 65.00, 'almera.jpg', 'AVAILABLE'),
(106, 'Perodua Axia', 'Petrol', 4, 40.00, 'axia.jpg', 'AVAILABLE'),
(107, 'Toyota Camry Hybrid', 'Hybrid', 6, 55.00, 'camry.jpg', 'AVAILABLE'),
(108, 'Proton X70', 'Diesel', 5, 50.00, 'x70.jpg', 'AVAILABLE'),
(109, 'Honda City', 'Petrol', 4, 45.00, 'city.jpg', 'AVAILABLE'),
(110, 'Lexus RX Hybrid', 'Hybrid', 5, 60.00, 'lexus.jpg', 'AVAILABLE');


-- Insert 10 rows into 'customer' table
INSERT INTO `customer` (`FNAME`, `LNAME`, `EMAIL`, `LICENSE_NO`, `PHONE_NO`, `PASSWORD`, `GENDER`)
VALUES
('Ahmad', 'Rahman', 'ahmad.rahman@gmail.com', 'AB123456', 0113674891, 'password1', 'Male'),
('Siti', 'Aminah', 'siti.aminah@gmail.com', 'CD789012', 0138746298, 'password2', 'Female'),
('Mohammad', 'Hassan', 'mohammad.hassan@gmail.com', 'EF345678', 0145873625, 'password3', 'Male'),
('Nor', 'Azizah', 'nor.azizah@gmail.com', 'GH567890', 0175878725, 'password4', 'Female'),
('Ali', 'Ismail', 'ali.ismail@gmail.com', 'IJ123456', 0195878756, 'password5', 'Male'),
('Fatimah', 'Linda', 'fatimahlinda@gmail.com', 'KL345678', 0115874456, 'password6', 'Female'),
('Zainuddin', 'Zakaria', 'zainuddin.zakaria@gmail.com', 'MN567890', 0115876767, 'password7', 'Male'),
('Salmah', 'Hashim', 'salmah.hashim@gmail.com', 'OP123456', 0198267351, 'password8', 'Female'),
('Razak', 'Abdullah', 'razak.abdullah@gmail.com', 'QR345678', 0112265628, 'password9', 'Male'),
('Nur', 'Aisyah', 'nur.aisyah@gmail.com', 'ST567890', 0102659828, 'password10', 'Female');


-- Insert 10 rows into 'booking' table
INSERT INTO `booking` (`BOOK_ID`, `CAR_ID`, `EMAIL`, `BOOK_LOCATION`, `BOOK_DATE`, `DURATION`, `PHONE_NO`, `DESTINATION`, `RETURN_DATE`, `AMOUNT`, `STATUS`)
VALUES
(201, 101, 'ahmad.rahman@gmail.com', 'Kuala Lumpur', '2024-01-14', 5, 1234567891, 'Penang', '2024-01-19', 250.50, 'CONFIRMED'),
(202, 102, 'siti.aminah@gmail.com', 'Penang', '2024-01-15', 3, 1234567892, 'Alor Setar', '2024-01-18', 150.25, 'PENDING'),
(203, 103, 'mohammad.hassan@gmail.com', 'Langkawi', '2024-01-16', 4, 1234567893, 'Langkawi', '2024-01-20', 200.75, 'CONFIRMED'),
(204, 104, 'nor.azizah@gmail.com', 'Cameron Highlands', '2024-01-17', 2, 1234567894, 'Gombak', '2024-01-19', 120.00, 'PENDING'),
(205, 105, 'ali.ismail@gmail.com', 'Gombak', '2024-01-18', 6, 1234567895, 'Batu Pahat', '2024-01-23', 300.00, 'CONFIRMED'),
(206, 106, 'fatimahlinda@gmail.com', 'Shah Alam', '2024-01-19', 3, 1234567896, 'Ipoh', '2024-01-22', 180.50, 'PENDING'),
(207, 107, 'zainuddin.zakaria@gmail.com', 'Ipoh', '2024-01-20', 5, 1234567897, 'Melaka', '2024-01-25', 250.00, 'CONFIRMED'),
(208, 108, 'salmah.hashim@gmail.com', 'Melaka', '2024-01-21', 2, 1234567898, 'Johor Bahru', '2024-01-24', 120.75, 'PENDING'),
(209, 109, 'razak.abdullah@gmail.com', 'Johor Bahru', '2024-01-22', 4, 1234567899, 'Kuala Terengganu', '2024-01-27', 200.00, 'CONFIRMED'),
(210, 110, 'nur.aisyah@gmail.com', 'Kuala Terengganu', '2024-01-23', 6, 1234567800, 'George Town', '2024-01-26', 300.25, 'PENDING');


-- Insert 10 rows into 'payment' table
INSERT INTO `payment` (`PAY_ID`, `BOOK_ID`, `CARD_NO`, `EXP_DATE`, `CVV`, `AMOUNT`)
VALUES
(301, 201, 1111111111, '12/25', 123, 250.50),
(302, 202, 2222222222, '01/26', 456, 150.25),
(303, 203, 3333333333, '02/27', 789, 200.75),
(304, 204, 4444444444, '03/28', 012, 120.00),
(305, 205, 5555555555, '04/29', 345, 300.00),
(306, 206, 6666666666, '05/30', 678, 180.50),
(307, 207, 7777777777, '06/31', 901, 250.00),
(308, 208, 8888888888, '07/32', 234, 120.75),
(309, 209, 9999999999, '08/33', 567, 200.00),
(310, 210, 1211212121, '09/34', 890, 300.25);
