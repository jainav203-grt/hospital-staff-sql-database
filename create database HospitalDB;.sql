create database HospitalDB;
use HospitalDB;
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialization VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);
INSERT INTO Doctors VALUES
(1, 'Dr. Shekhar', 'Cardiology', 120000, '2018-04-16'),
(2, 'Dr. Malhotra', 'Neurology', 135000, '2019-06-21'),
(3, 'Dr. Goswami', 'Orthopedics', 110000, '2020-01-13'),
(4, 'Dr. Pathan', 'Dermatology', 95000, '2021-07-02'),
(5, 'Dr. Bisht', 'Pediatrics', 105000, '2017-10-15'),
(6, 'Dr. Rawat', 'General Medicine', 100000, '2023-01-25');
select * from Doctors;
-- Nurse Table
CREATE TABLE Nurses (
    nurse_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    shift VARCHAR(20),
    salary DECIMAL(10,2)
);
INSERT INTO Nurses VALUES
(1, 'Arya', 'Cardiology', 'Day', 40000),
(2, 'Ranjeeta', 'Neurology', 'Night', 42000),
(3, 'Poonam', 'Orthopedics', 'Night', 39000),
(4, 'Shristi', 'General Medicine', 'Night', 38000),
(5, 'Jyoti', 'Pediatrics', 'Day', 41000),
(6, 'Komal', 'Dermatology', 'Day', 40550);
select * from Nurses;
-- Patients Table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(50),
    doctor_id INT,
    admitted_date DATE,
    discharged_date DATE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
INSERT INTO Patients VALUES
(1, 'Pramod', 34, 'Male', 'Heart Disease', 1, '2023-07-02', '2023-07-13'),
(2, 'Shretha', 28, 'Female', 'Skin Allergy', 4, '2023-08-1', '2023-08-05'),
(3, 'Vinod', 41, 'Male', 'Brain Tumor', 2, '2023-08-10', '2023-10-04'),
(4, 'Priyanka', 53, 'Female', 'Fracture', 3, '2023-09-16', '2023-09-26'),
(5, 'Kabir', 23, 'Male', 'Migraine', 2, '2023-10-15', '2023-10-30'),
(6, 'Zainab', 8, 'Female', 'Fever', 5, '2023-06-10', '2023-06-17'),
(7, 'Zaheer', 31, 'Male', 'Diabetes', 6, '2023-05-19', '2023-05-25'),
(8, 'Nishu', 27, 'Female', 'Heart Problem', 1, '2023-07-24', '2023-08-25'),
(9, 'Akshat', 11, 'Male', 'Cold & Cough', 5, '2023-03-01', '2023-04-08'),
(10, 'Romie', 46, 'Male', 'Back Pain', 3, '2023-02-10', '2023-03-20'),
(11, 'Shreya', 36, 'Female', 'Skin Rash', 4, '2023-01-25', '2023-01-28'),
(12, 'Mohit', 52, 'Male', 'Stroke', 2, '2023-02-15', '2023-03-10'),
(13, 'Dipaali', 31, 'Female', 'Anemia', 6, '2023-06-12', '2023-06-18'),
(14, 'Rashmika', 63, 'Male', 'Heart Surgery', 1, '2023-05-20', '2023-06-21'),
(15, 'Pallavi', 5, 'Female', 'Chickenpox', 5, '2023-12-08', '2023-12-15');
select * from Patients;