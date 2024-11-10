-->Overview
The Airline Management System is a desktop-based application designed to streamline and automate the operations of an airline. Developed using Java Swing for the graphical user interface (GUI) and MySQL for the database, this system helps manage flight scheduling, booking, passenger management, and employee administration. The system supports two types of users: Admin and Employee, each with specific functionalities and permissions.

This system is built using NetBeans IDE and utilizes JDBC (Java Database Connectivity) for communication between the application and the MySQL database.


-->Key Features:
 -Admin Functionality: Manage flight details, employee records, and view 
  system reports.
 -Employee Functionality: Manage passenger information, book flights, and 
  handle flight cancellations.

  
-->Features
-Admin Features:
 Admins have the ability to manage the overall airline operations and 
 employee records:


1) Add/Edit/Delete Flight Details:
Admin can manage flight schedules, including the addition of new flights, editing existing flights, and deleting outdated flights.
Flight details include destinations, schedules, flight number, aircraft type, and available seats.
2) Employee Management
Admin can add new employees, update their details (e.g., name, position), or remove employees.
Admin can assign login permissions, such as roles for employees.
3)Generate Reports:
Admin can generate reports related to flight schedules, booked flights, revenue, and any other analytical data regarding the airline's operations.



-->Employee Features:
Employees perform tasks related to passengers and bookings, with the following capabilities:

1)Add Passenger Details:
Employees can register new passengers by entering their personal details such as name, contact info, passport number, etc.

2)View/Update Passenger Information:
Employees can view and update passenger details when required, e.g., updating contact details, personal preferences, etc.

3)Book Flights:
Employees assist passengers in selecting flights and booking tickets.
The booking process includes choosing a flight, entering passenger details, and confirming payment.

4)View Booked Flights:
Employees can view a list of booked flights for each passenger, including flight details like departure time, flight number, and booking status.

5)Manage Flight Journey and Zones:
Employees can manage flight journeys, including adding new routes, managing departure and arrival airports, and configuring travel zones.

6)Cancel Flights:
Employees can process flight cancellations and provide assistance with refunds and rescheduling.

7)Generate Flight Bill:
Employees calculate and generate the total flight bill based on the flight chosen, including taxes, service fees, and other charges.

-->Tech Stack
1)Programming Language: Java (Swing for GUI)
2)Database: MySQL
3)IDE: NetBeans

This project uses Java Swing to create a rich, interactive desktop application interface and MySQL to store and retrieve data related to flights, passengers, and bookings.



-->Installation and Setup
Follow the steps below to set up the Airline Management System on your local machine.

Step 1: Clone the Repository
Clone the repository to your local machine by running the following command in your terminal:

Step 2: Set Up the Database
*Install MySQL (if not already installed).
*Create Database: Open MySQL and create a new database called airline_db:
 sql
 Copy code
 CREATE DATABASE airline_db;
*Import SQL Schema:
  Inside the /database/ folder, you’ll find an SQL file named 
  airline_db.sql. This file contains all the necessary table structures and 
  initial data for the system.
  Open your MySQL command line or a MySQL GUI like MySQL Workbench and run 
  the following command to load the schema:
  sql
*Copy code
 USE airline_db;
 SOURCE /path/to/airline_db.sql;
 This will create the tables required by the application (e.g., flights, 
employees, passengers, etc.).


Step 3: Configure Database Connection
  *Open the project in NetBeans IDE.
  *In the project, locate the database connection details in the Java code 
   (usually within a class that handles database operations, like 
   DBConnection.java).
  *Update the following values to match your local MySQL configuration


Step 4: Set Up the Project in NetBeans
 *Launch NetBeans IDE.
 *Go to File > Open Project and select the project directory you just 
  cloned.
 *Ensure that the MySQL JDBC driver is included in the project:
      Right-click the Libraries node in the project.
      Choose Add Library and select the MySQL JDBC driver (or download it 
      from MySQL's website).

      
Step 5: Run the Application
     *Right-click the project in NetBeans and select Run.
     *The application should now launch with a login screen.

      -Admin Login:
       Username: admin
       Password: admin123
      -Employee Login:
       Credentials are stored in the database. You can add employee 
       records from the admin panel.

-->Usage
  nce the system is running, here’s how to use it:
  *Admin Panel:
     Add/Edit/Delete Flight Details: Navigate to the Flight Management 
     section to add, update, or remove flights.
     
     Manage Employees: Go to the Employee Management section to add, 
     update, or delete employee records.
     
     Generate Reports: Access the Reports section to generate reports 
     related to flights, bookings, and revenue.
  *Employee Panel:
     Add Passenger Details: Use the Passenger Management section to addnew 
     passengers.
     
     Book Flights: Employees can book flights for passengers from the 
     Flight 
    
     Booking section.
     View/Update Passenger Information: Employees can manage passenger 
     details through the Passenger Information section.
     
     Cancel Flights: In the Flight Booking section, employees can cancel 
     flights.
