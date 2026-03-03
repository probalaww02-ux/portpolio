-- Create Database for Student Management System
CREATE DATABASE IF NOT EXISTS student_management;
USE student_management;

-- Students Table
CREATE TABLE students (
    reg_no VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    attendance_percentage DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Sample Insert Statements

-- Insert sample students
INSERT INTO students (reg_no, name, attendance_percentage)
VALUES 
    ('REG001', 'John Doe', 85.50),
    ('REG002', 'Jane Smith', 92.00),
    ('REG003', 'Michael Johnson', 78.25),
    ('REG004', 'Emily Davis', 95.75),
    ('REG005', 'Robert Wilson', 88.00);

-- Useful Queries

-- View all students
-- SELECT * FROM students;

-- View students with attendance above 90%
-- SELECT * FROM students WHERE attendance_percentage >= 90;

-- View students with attendance below 75%
-- SELECT * FROM students WHERE attendance_percentage < 75;

-- Update student attendance
-- UPDATE students SET attendance_percentage = 90.00 WHERE reg_no = 'REG001';

-- Add new student
-- INSERT INTO students (reg_no, name, attendance_percentage) VALUES ('REG006', 'Student Name', 80.00);
