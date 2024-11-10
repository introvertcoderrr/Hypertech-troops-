

--TABLE FOR LOGIN PAGE
CREATE TABLE signup (
    ->   username VARCHAR(50),
    ->   name VARCHAR(50),
    ->   `password` VARCHAR(50),
    ->   phone VARCHAR(50)
    -> );

--EXAMPLE
INSERT INTO signup (username, name, password, phone) 
VALUES 
('john_doe', 'John Doe', 'password123', '9876543210'),
('jane_smith', 'Jane Smith', 'mysecurepass', '1234567890'),
('mike_lee', 'Mike Lee', 'pass@2024', '5556667777'),
('sarah_jones', 'Sarah Jones', 'sarah2024', '9876543212');



--TABLE FOR ADDING THE PASSANGERS DETAIL
 CREATE TABLE passengers (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     username VARCHAR(50) NOT NULL,
    ->     name VARCHAR(100) NOT NULL,
    ->     age INT,
    ->     dob DATE,
    ->     address VARCHAR(255),
    ->     phone VARCHAR(15),
    ->     email VARCHAR(100),
    ->     nationality VARCHAR(50),
    ->     gender VARCHAR(10),
    ->     passport VARCHAR(20)
    -> );

--EXAMPLE
INSERT INTO passengers (username, name, age, dob, address, phone, email, nationality, gender, passport) 
VALUES 
('john_doe', 'John Doe', 30, '1994-05-12', '123 Elm St, New York, NY', '9876543210', 'john.doe@email.com', 'American', 'Male', 'A12345678'),
('jane_smith', 'Jane Smith', 25, '1999-08-23', '456 Maple Ave, London', '1234567890', 'jane.smith@email.com', 'British', 'Female', 'B98765432'),
('mike_lee', 'Mike Lee', 35, '1989-02-14', '789 Pine Rd, Sydney', '5556667777', 'mike.lee@email.com', 'Australian', 'Male', 'C11223344'),
('sarah_jones', 'Sarah Jones', 28, '1996-11-30', '101 Oak St, Paris', '9876543212', 'sarah.jones@email.com', 'French', 'Female', 'D12398765');


-->TABLE FOR BOOK THE FLIGHT

CREATE TABLE booked_flight (
    tid INT AUTO_INCREMENT PRIMARY KEY,
    source VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    class_name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    fcode VARCHAR(10) NOT NULL,
    fname VARCHAR(100) NOT NULL,
    journey_date DATE NOT NULL,
    journey_time TIME NOT NULL,
    username VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    status ENUM('Booked', 'Cancelled', 'Completed') DEFAULT 'Booked'
);

--EXAMPLE
INSERT INTO booked_flight (source, destination, class_name, price, fcode, fname, journey_date, journey_time, username, name, status) 
VALUES 
('New York', 'London', 'Economy', 500.00, 'AA101', 'American Airlines', '2024-12-01', '10:30:00', 'john_doe', 'John Doe', 'Booked'),
('Paris', 'Tokyo', 'Business', 1200.00, 'JL407', 'Japan Airlines', '2024-12-05', '15:45:00', 'jane_smith', 'Jane Smith', 'Booked'),
('Los Angeles', 'Miami', 'Economy', 300.00, 'DL302', 'Delta Airlines', '2024-11-20', '08:00:00', 'mike_lee', 'Mike Lee', 'Cancelled'),
('Sydney', 'Melbourne', 'First Class', 2000.00, 'QF408', 'Qantas Airways', '2024-12-10', '20:15:00', 'sarah_jones', 'Sarah Jones', 'Completed');


-->TABLE FOR JOURNEY DETAILS

CREATE TABLE journey_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    source VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL
);
--EXAMPLE
INSERT INTO journey_detail (source, destination)
VALUES 
    ('New York', 'Los Angeles'),
    ('Chicago', 'Miami'),
    ('San Francisco', 'Seattle'),
    ('Dallas', 'Houston'),
    ('Boston', 'Washington DC');



-->TABLE FOR ADD FLIGHT FOR ADMIN
CREATE TABLE flights (
    fcode VARCHAR(10) PRIMARY KEY,
    fname VARCHAR(100) NOT NULL,
    source VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    class_name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

--EXAMPLE
INSERT INTO flights (fcode, fname, source, destination, capacity, class_name, price)
VALUES ('AA123', 'American Airlines', 'New York', 'Los Angeles', 200, 'Economy', 250.00),
       ('UA456', 'United Airlines', 'Chicago', 'San Francisco', 180, 'Business', 500.00),
       ('DL789', 'Delta Airlines', 'Miami', 'Dallas', 150, 'Economy', 300.00);

--TABLE FOR ADMIN LOGIN
CREATE TABLE admin (
    username VARCHAR(50) PRIMARY KEY,   -- Admin username (unique identifier)
    password VARCHAR(50) NOT NULL       -- Admin password
);

--TABLE FOR ADD EMPLOYEE DATA
CREATE TABLE employee (
    username VARCHAR(50) PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL
);
--EXAMPLE
INSERT INTO employee (username, employee_name, password, phone) 
VALUES 
('john_doe', 'John Doe', 'password123', '9876543210'),
('jane_smith', 'Jane Smith', 'jane@2024', '1234567890'),
('mike_lee', 'Mike Lee', 'mike@123', '5556667777'),
('sarah_jones', 'Sarah Jones', 'securePass', '9876543212');

--TABLE FOR GET FLIGHT BILLS
CREATE TABLE ticket_bill (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    price DECIMAL(10, 2) NOT NULL,
    journey_date DATE NOT NULL,
    journey_time TIME NOT NULL,
    username VARCHAR(50) NOT NULL,
    status ENUM('Booked', 'Cancelled', 'Completed') DEFAULT 'Booked'
);

--EXAMPLE
INSERT INTO ticket_bill (price, journey_date, journey_time, username, status)
VALUES
(5000.00, '2024-12-15', '10:00:00', 'john_doe', 'Booked'),
(6000.00, '2024-12-16', '12:00:00', 'jane_smith', 'Completed'),
(4500.00, '2024-12-20', '14:00:00', 'mike_lee', 'Cancelled');
