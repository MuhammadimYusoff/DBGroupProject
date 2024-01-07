-- ProjName_data.sql

-- Insert data into car table
INSERT INTO car (CarID, Model, Year, Color, RegistrationNumber, RentalRatePerDay)
VALUES
  (1001, 'Toyota Camry', '2022-01-01', 'Blue', 12345, 50.00),
  (1002, 'Honda Accord', '2021-01-01', 'Red', 67890, 55.00),
  (1003, 'Ford Mustang', '2023-01-01', 'Yellow', 13579, 70.00),
  (1004, 'Chevrolet Malibu', '2022-01-01', 'Silver', 24680, 60.00),
  (1005, 'Nissan Altima', '2020-01-01', 'Black', 98765, 45.00),
  (1006, 'Hyundai Sonata', '2021-01-01', 'White', 54321, 55.00),
  (1007, 'Kia Optima', '2023-01-01', 'Green', 11223, 65.00),
  (1008, 'Mazda 6', '2022-01-01', 'Gray', 44556, 58.00),
  (1009, 'Subaru Legacy', '2020-01-01', 'Brown', 77889, 48.00),
  (1010, 'Volkswagen Passat', '2021-01-01', 'Orange', 99000, 52.00);

-- Insert data into customer table
INSERT INTO customer (CustomerID, FirstName, LastName, Address, Email, Phone, LicenseNumber)
VALUES
  (2001, 'John', 'Doe', '123 Main St', 'john.doe@email.com', 01123987645, 987654),
  (2002, 'Jane', 'Smith', '456 Oak St', 'jane.smith@email.com', 01123117645, 654321),
  (2003, 'Robert', 'Johnson', '789 Pine St', 'robert.johnson@email.com', 01323987645, 123123),
  (2004, 'Emily', 'Davis', '101 Elm St', 'emily.davis@email.com', 01987226452, 456789),
  (2005, 'Michael', 'Miller', '202 Maple St', 'michael.miller@email.com', 01985625452, 789123),
  (2006, 'Samantha', 'Wilson', '303 Birch St', 'samantha.wilson@email.com', 01787223452, 456789),
  (2007, 'Daniel', 'Brown', '404 Cedar St', 'daniel.brown@email.com', 01489226322, 987654),
  (2008, 'Olivia', 'Jones', '505 Walnut St', 'olivia.jones@email.com', 01927124451, 321654),
  (2009, 'David', 'Garcia', '606 Oak St', 'david.garcia@email.com', 01287236432, 456123),
  (2010, 'Sophia', 'Martinez', '707 Pine St', 'sophia.martinez@email.com', 01177126451, 789321);

-- Insert data into insurance table
INSERT INTO insurance (InsuranceID, TransactionID, PolicyNumber, CoverageType, PremiumAmount)
VALUES
  (3001, 4101, 123456, 'Comprehensive', 100.00),
  (3002, 4102, 789012, 'Collision', 75.00),
  (3003, 4103, 345678, 'Liability', 50.00),
  (3004, 4104, 901234, 'Full Coverage', 120.00),
  (3005, 4105, 567890, 'Basic', 30.00),
  (3006, 4106, 123789, 'Collision', 80.00),
  (3007, 4107, 456012, 'Comprehensive', 110.00),
  (3008, 4108, 789345, 'Liability', 55.00),
  (3009, 4109, 234567, 'Full Coverage', 130.00),
  (3010, 4110, 890123, 'Basic', 35.00);

-- Insert data into payment table
INSERT INTO payment (PaymentID, TransactionID, PaymentDate, Amount, PaymentMethod)
VALUES
  (4001, 4101, '2022-01-15', 50.00, 'Credit Card'),
  (4002, 4102, '2022-02-20', 75.00, 'Debit Card'),
  (4003, 4103, '2022-03-25', 30.00, 'Cash'),
  (4004, 4104, '2022-04-10', 120.00, 'Credit Card'),
  (4005, 4105, '2022-05-05', 20.00, 'Debit Card'),
  (4006, 4106, '2022-06-15', 80.00, 'Cash'),
  (4007, 4107, '2022-07-20', 110.00, 'Credit Card'),
  (4008, 4108, '2022-08-25', 55.00, 'Debit Card'),
  (4009, 4109, '2022-09-10', 130.00, 'Cash'),
  (4010, 4110, '2022-10-05', 35.00, 'Credit Card');

-- Insert data into rentaltransaction table
INSERT INTO rentaltransaction (TransactionID, CustomerID, CarID, RentalStartDate, RentalEndDate, TotalCost)
VALUES
  (4101, 2001, 1001, '2022-01-01', '2022-01-10', 500.00),
  (4102, 2002, 1003, '2022-02-01', '2022-02-15', 825.00),
  (4103, 2003, 1005, '2022-03-01', '2022-03-20', 450.00),
  (4104, 2004, 1007, '2022-04-01', '2022-04-25', 880.00),
  (4105, 2005, 1009, '2022-05-01', '2022-05-10', 480.00),
  (4106, 2006, 1002, '2022-06-01', '2022-06-15', 550.00),
  (4107, 2007, 1004, '2022-07-01', '2022-07-20', 720.00),
  (4108, 2008, 1006, '2022-08-01', '2022-08-15', 605.00),
  (4109, 2009, 1008, '2022-09-01', '2022-09-10', 580.00),
  (4110, 2010, 1010, '2022-10-01', '2022-10-05', 260.00);

-- Insert data into reservation table
INSERT INTO reservation (ReservationID, CustomerID, CarID, ReservationDate, PickupDate, ReturnDate)
VALUES
  (5001, 2001, 1001, '2022-01-05', '2022-01-15', '2022-01-20'),
  (5002, 2002, 1003, '2022-02-10', '2022-02-20', '2022-02-25'),
  (5003, 2003, 1005, '2022-03-15', '2022-03-25', '2022-03-30'),
  (5004, 2004, 1007, '2022-04-20', '2022-04-30', '2022-05-05'),
  (5005, 2005, 1009, '2022-05-25', '2022-06-05', '2022-06-10'),
  (5006, 2006, 1002, '2022-06-30', '2022-07-10', '2022-07-15'),
  (5007, 2007, 1004, '2022-07-05', '2022-07-15', '2022-07-20'),
  (5008, 2008, 1006, '2022-08-10', '2022-08-20', '2022-08-25'),
  (5009, 2009, 1008, '2022-09-15', '2022-09-25', '2022-09-30'),
  (5010, 2010, 1010, '2022-10-20', '2022-10-30', '2022-11-05');
