-- Create the database
-- CREATE DATABASE PandemicPreparedness;
-- USE PandemicPreparedness;

-- Create Case table
-- CREATE TABLE `Case` (
--     CaseID INT AUTO_INCREMENT PRIMARY KEY,
--     DateReported DATE,
--     Location VARCHAR(255),
--     Age INT,
--     Gender VARCHAR(10),
--     HealthStatus VARCHAR(255)
-- );

-- Create Vaccination table
-- CREATE TABLE Vaccination (
--     VaccineID INT AUTO_INCREMENT PRIMARY KEY,
--     DateAdministered DATE,
--     Location VARCHAR(255),
--     NumberAdministered INT
-- );

-- Create HealthcareFacility table
-- CREATE TABLE HealthcareFacility (
--     FacilityID INT AUTO_INCREMENT PRIMARY KEY,
--     Name VARCHAR(255),
--     Location VARCHAR(255),
--     Type VARCHAR(100),
--     Capacity INT
-- );

-- Create PublicHealthIntervention table
-- CREATE TABLE PublicHealthIntervention (
--     InterventionID INT AUTO_INCREMENT PRIMARY KEY,
--     Type VARCHAR(100),
--     DateImplemented DATE,
--     Location VARCHAR(255),
--     Description TEXT
-- );

-- Create Resource table
-- CREATE TABLE Resource (
--     ResourceID INT AUTO_INCREMENT PRIMARY KEY,
--     Type VARCHAR(100),
--     Quantity INT,
--     Location VARCHAR(255)
-- );

-- Create Patient table
-- CREATE TABLE Patient (
--     PatientID INT AUTO_INCREMENT PRIMARY KEY,
--     Name VARCHAR(255),
--     Age INT,
--     Gender VARCHAR(10),
--     Address TEXT,
--     ContactNumber VARCHAR(20)
-- );

-- Create CasePatient table to establish the relationship
-- CREATE TABLE CasePatient (
--     CaseID INT,
--     PatientID INT,
--     PRIMARY KEY (CaseID, PatientID),
--     FOREIGN KEY (CaseID) REFERENCES `Case`(CaseID),
--     FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
-- );

-- Insert sample data into Case table
-- INSERT INTO `Case` (DateReported, Location, Age, Gender, HealthStatus) VALUES
-- ('2024-09-01', 'City A', 30, 'Male', 'Recovered'),
-- ('2024-09-02', 'City B', 25, 'Female', 'Under Treatment');

-- Insert sample data into Vaccination table
-- INSERT INTO Vaccination (DateAdministered, Location, NumberAdministered) VALUES
-- ('2024-08-20', 'City A', 1000),
-- ('2024-08-22', 'City B', 800);

-- Insert sample data into HealthcareFacility table
-- INSERT INTO HealthcareFacility (Name, Location, Type, Capacity) VALUES
-- ('Hospital X', 'City A', 'General', 200),
-- ('Clinic Y', 'City B', 'Specialized', 100);

-- Insert sample data into PublicHealthIntervention table
-- INSERT INTO PublicHealthIntervention (Type, DateImplemented, Location, Description) VALUES
-- ('Quarantine', '2024-08-15', 'City A', 'Strict quarantine measures implemented.'),
-- ('Public Awareness', '2024-08-17', 'City B', 'Public awareness campaigns launched.');

-- Insert sample data into Resource table
-- INSERT INTO Resource (Type, Quantity, Location) VALUES
-- ('PPE', 5000, 'City A'),
-- ('Medicines', 3000, 'City B');

-- Insert sample data into Patient table
-- INSERT INTO Patient (Name, Age, Gender, Address, ContactNumber) VALUES
-- ('John Doe', 30, 'Male', '123 Street, City A', '555-1234'),
-- ('Jane Smith', 25, 'Female', '456 Avenue, City B', '555-5678');

-- Insert sample data into CasePatient table
-- INSERT INTO CasePatient (CaseID, PatientID) VALUES
-- (1, 1),
-- (2, 2);

-- SHOW TABLES;


-- SELECT `case`.CaseID, `case`.DateReported, `case`.Location, 
--        Patient.Name, Patient.Age, Patient.Gender, `case`.HealthStatus
-- FROM `case`
-- JOIN CasePatient ON `case`.CaseID = CasePatient.CaseID
-- JOIN Patient ON CasePatient.PatientID = Patient.PatientID;

-- SELECT Location, SUM(NumberAdministered) AS TotalVaccinesAdministered
-- FROM Vaccination
-- GROUP BY Location;

-- SELECT Type, DateImplemented, Description
-- FROM PublicHealthIntervention
-- WHERE Location = 'New York';

-- SELECT Name, Location, Type, Capacity
-- FROM HealthcareFacility
-- WHERE Capacity > 100;

-- SELECT Resource.Type, Resource.Quantity
-- FROM Resource
-- WHERE Resource.Location = 'city A';

-- SELECT Patient.Name, Patient.Age, Patient.Gender, `case`.HealthStatus, `case`.DateReported
-- FROM Patient
-- JOIN CasePatient ON Patient.PatientID = CasePatient.PatientID
-- JOIN `case` ON CasePatient.CaseID = `case`.CaseID;

-- SELECT Location, SUM(NumberAdministered) AS TotalVaccinesAdministered
-- FROM Vaccination
-- GROUP BY Location
-- ORDER BY TotalVaccinesAdministered DESC;

-- SELECT `case`.HealthStatus, AVG(Patient.Age) AS AverageAge
-- FROM `case`
-- JOIN CasePatient ON `case`.CaseID = CasePatient.CaseID
-- JOIN Patient ON CasePatient.PatientID = Patient.PatientID
-- GROUP BY `case`.HealthStatus;

-- Insert sample data for the 'case' table
-- INSERT INTO `case` (DateReported, Location, Age, Gender, HealthStatus)
-- VALUES
-- ('2024-01-01', 'New York', 32, 'Male', 'Recovered'),
-- ('2024-02-12', 'Los Angeles', 45, 'Female', 'Under Treatment'),
-- ('2024-03-20', 'Chicago', 22, 'Male', 'Recovered'),
-- ('2024-04-15', 'Houston', 28, 'Female', 'Critical'),
-- ('2024-05-10', 'Miami', 35, 'Male', 'Recovered'),
-- Additional cases to bring the total to 150 rows
-- ('2024-06-01', 'San Francisco', 29, 'Female', 'Recovered'),
-- ('2024-06-12', 'Seattle', 55, 'Male', 'Under Treatment'),
-- ('2024-07-08', 'Boston', 40, 'Female', 'Recovered'),
-- ('2024-07-10', 'Austin', 31, 'Male', 'Critical'),
-- ('2024-08-01', 'Las Vegas', 25, 'Female', 'Recovered'),
-- ('2024-08-22', 'Denver', 36, 'Male', 'Under Treatment'),
-- ('2024-09-10', 'Miami', 42, 'Female', 'Recovered'),
-- (Continue adding more rows similarly...)
-- ('2024-12-15', 'Los Angeles', 27, 'Female', 'Recovered');


-- Insert sample data for the 'vaccination' table
-- INSERT INTO Vaccination (DateAdministered, Location, NumberAdministered)
-- VALUES
-- ('2024-01-15', 'New York', 500),
-- ('2024-02-20', 'Los Angeles', 300),
-- ('2024-03-05', 'Chicago', 450),
-- ('2024-04-10', 'Houston', 350),
-- ('2024-05-25', 'Miami', 200),
-- -- Additional vaccination data to bring the total to 150 rows
-- ('2024-06-18', 'San Francisco', 300),
-- ('2024-06-25', 'Seattle', 700),
-- ('2024-07-05', 'Boston', 550),
-- ('2024-07-15', 'Austin', 400),
-- ('2024-08-02', 'Las Vegas', 250),
-- ('2024-08-30', 'Denver', 800),
-- -- (Continue adding more rows similarly...)
-- ('2024-12-10', 'Miami', 900);

-- Insert sample data for the 'healthcarefacility' table
-- INSERT INTO HealthcareFacility (Name, Location, Type, Capacity)
-- VALUES
-- ('NYC Health Hospital', 'New York', 'Hospital', 1000),
-- ('UCLA Medical Center', 'Los Angeles', 'Hospital', 850),
-- ('Chicago General', 'Chicago', 'Clinic', 400),
-- ('Houston Care', 'Houston', 'Hospital', 900),
-- ('Miami Wellness', 'Miami', 'Clinic', 300),
-- -- Additional facilities to reach 150 rows
-- ('San Francisco Health', 'San Francisco', 'Hospital', 950),
-- ('Seattle General', 'Seattle', 'Clinic', 600),
-- ('Boston Medical', 'Boston', 'Hospital', 1200),
-- ('Austin Health Clinic', 'Austin', 'Clinic', 450),
-- ('Vegas Medical Center', 'Las Vegas', 'Hospital', 500),
-- ('Denver Community Health', 'Denver', 'Clinic', 700),
-- -- (Continue adding more rows similarly...)
-- ('LA Urgent Care', 'Los Angeles', 'Clinic', 300);


-- -- Insert sample data for the 'publichealthintervention' table
-- INSERT INTO PublicHealthIntervention (Type, DateImplemented, Location, Description)
-- VALUES
-- ('Mask Mandate', '2024-01-05', 'New York', 'Mandatory mask use in public spaces'),
-- ('Vaccination Campaign', '2024-02-18', 'Los Angeles', 'Mass vaccination in public places'),
-- ('Lockdown', '2024-03-22', 'Chicago', 'Lockdown imposed in high-risk zones'),
-- ('Social Distancing', '2024-04-12', 'Houston', 'Social distancing enforced in public areas'),
-- ('Travel Ban', '2024-05-08', 'Miami', 'Travel ban for incoming and outgoing flights'),
-- -- Additional interventions to reach 150 rows
-- ('Contact Tracing', '2024-06-20', 'San Francisco', 'Intensive contact tracing program'),
-- ('Quarantine Zone', '2024-07-05', 'Seattle', 'Mandatory quarantine in high-risk areas'),
-- ('Public Awareness Campaign', '2024-08-15', 'Boston', 'Educational campaigns on public health measures'),
-- -- (Continue adding more rows similarly...)
-- ('Healthcare Capacity Boost', '2024-11-22', 'Denver', 'Increasing hospital beds and resources');

-- -- Insert sample data for the 'resource' table
-- INSERT INTO Resource (Type, Quantity, Location)
-- VALUES
-- ('Ventilators', 150, 'New York'),
-- ('Masks', 5000, 'Los Angeles'),
-- ('PPE Kits', 2000, 'Chicago'),
-- ('ICU Beds', 100, 'Houston'),
-- ('Vaccines', 10000, 'Miami'),
-- -- Additional resources to reach 150 rows
-- ('Oxygen Tanks', 300, 'San Francisco'),
-- ('Testing Kits', 20000, 'Seattle'),
-- ('Sanitizers', 5000, 'Boston'),
-- ('Face Shields', 1500, 'Austin'),
-- -- (Continue adding more rows similarly...)
-- ('Medical Gloves', 10000, 'Denver');


-- -- Insert sample data for the 'patient' table
-- INSERT INTO Patient (Name, Age, Gender, Address, ContactNumber)
-- VALUES
-- ('John Doe', 32, 'Male', '123 Main St, New York', '555-1234'),
-- ('Jane Smith', 45, 'Female', '456 Oak St, Los Angeles', '555-5678'),
-- ('Mike Johnson', 22, 'Male', '789 Pine St, Chicago', '555-9101'),
-- ('Emily Davis', 28, 'Female', '101 Maple St, Houston', '555-1122'),
-- ('Alex Brown', 35, 'Male', '202 Cedar St, Miami', '555-3344'),
-- -- Additional patients to reach 150 rows
-- ('Rachel Green', 40, 'Female', '303 Willow St, San Francisco', '555-4455'),
-- ('Paul Taylor', 50, 'Male', '404 Oakwood Ave, Seattle', '555-5566'),
-- ('Monica White', 26, 'Female', '505 Birch Rd, Boston', '555-6677'),
-- -- (Continue adding more rows similarly...)
-- ('Jake Black', 48, 'Male', '606 Aspen Dr, Denver', '555-7788');

-- SELECT * FROM `Case` WHERE CaseID IN (3, 4, 5, 6, 7, 8, 150);
-- SELECT * FROM Patient WHERE PatientID IN (3, 4, 5, 6, 7, 8, 150);

-- Insert into Case
INSERT INTO  `Case` (DateReported, Location, Age, Gender, HealthStatus) VALUES
('2024-01-01', 'New York', 32, 'Male', 'Recovered'),
('2024-02-12', 'Los Angeles', 45, 'Female', 'Under Treatment'),
('2024-03-20', 'Chicago', 22, 'Male', 'Recovered'),
('2024-04-15', 'Houston', 28, 'Female', 'Critical'),
('2024-05-10', 'Miami', 35, 'Male', 'Recovered'),
-- Add more rows as needed
('2024-12-15', 'Los Angeles', 27, 'Female', 'Recovered');

-- Insert into Patient
INSERT INTO Patient (Name, Age, Gender, Address, ContactNumber) VALUES
('John Doe', 32, 'Male', '123 Main St, New York', '555-1234'),
('Jane Smith', 45, 'Female', '456 Oak St, Los Angeles', '555-5678'),
('Mike Johnson', 22, 'Male', '789 Pine St, Chicago', '555-9101'),
('Emily Davis', 28, 'Female', '101 Maple St, Houston', '555-1122'),
('Alex Brown', 35, 'Male', '202 Cedar St, Miami', '555-3344'),
-- Add more rows as needed
('Lisa Blue', 30, 'Female', '707 Pine St, Miami', '555-8899');



-- Insert sample data for the 'casepatient' table
-- INSERT INTO CasePatient (CaseID, PatientID)
-- VALUES


-- (3, 3),
-- (4, 4),
-- (5, 5),
-- Additional case-patient links to reach 150 rows
-- (6, 6),
-- (7, 7),
-- (8, 8),
-- (Continue adding more rows similarly...)
-- (150, 150);










