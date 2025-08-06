-- Active: 1753685099492@@127.0.0.1@5432@test3
-- DROP DATABASE //[DatabaseName]
-- CREATE DATABASE Test2 ; [DatabaseName] is the name of the database to be created
-- ALTER DATABASE Test2 RENAME TO Test3 ; // Rename the database from Test2 to Test3
-- DROP TABLE [TableName] ; [TableName] is the name of the table to be deleted
-- CREATE TABLE [TableName] (Column1 DataType, Column2 DataType, ...) ; [TableName] is the name of the table to be created
-- ALTER TABLE [TableName] RENAME TO [NewTableName] ; // Rename the
-- table from [TableName] to [NewTableName]
-- DROP INDEX [IndexName] ; [IndexName] is the name of the index to
-- be deleted
-- CREATE INDEX [IndexName] ON [TableName] (Column1, Column2, ...) ; [IndexName] is the name of the index to be created
-- ALTER INDEX [IndexName] RENAME TO [NewIndexName] ; // Rename the index from [IndexName] to [NewIndexName]
-- DROP VIEW [ViewName] ; [ViewName] is the name of the view to be deleted
-- CREATE VIEW [ViewName] AS SELECT Column1, Column2, ... FROM [Table
--Name] ; [ViewName] is the name of the view to be created
-- ALTER VIEW [ViewName] RENAME TO [NewViewName] ; // Rename the view from [ViewName] to [NewViewName]
-- DROP PROCEDURE [ProcedureName] ; [ProcedureName] is the name of the stored procedure to be deleted
-- CREATE PROCEDURE [ProcedureName] (Parameter1 DataType, Parameter2 DataType, ...) ; [ProcedureName] is the name of the stored procedure to be created
-- ALTER PROCEDURE [ProcedureName] RENAME TO [NewProcedureName] ; // Rename the stored procedure from [ProcedureName] to [NewProcedureName]

-- create a new table for students
-- CREATE Table students (
--      student_id INT PRIMARY KEY,
--      first_name VARCHAR(50),
--      last_name VARCHAR(50),
--      cgpa NUMERIC(1, 2),
--      date_of_birth DATE,
--      email VARCHAR(100)
-- )

--update table name in sql
-- ALTER TABLE [TableName] RENAME TO [NewTableName]
-- ALTER TABLE students RENAME TO students_info;

--drop table in sql
-- DROP TABLE students_info;

CREATE Table users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE Table user_1 (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    age INT DEFAULT 18
)

INSERT INTO
    user_1
VALUES (
        1,
        'john_doe',
        'VXt8A@example.com',
        25
    ),
    (
        2,
        'jane_smith',
        '6Bd1o@example.com',
        30
    ),
    (
        3,
        'alice_jones',
        'mHr6r@example.com',
        28
    ),
    (
        4,
        'bob_brown',
        'hD3Pn@example.com',
        35
    ),
    (
        5,
        'charlie_white',
        'OYBdU@example.com',
        40
    )
RETURNING
    *;
-- update table values
UPDATE user_1
SET
    username = 'mohi',
    email = 'mohiu5204@gmail.com'
WHERE
    user_id = 1;
/
/
Update username, email for user_id 1

-- truncate its delete all records without deleting the table
TRUNCATE TABLE user_1;
/
/
Delete all records from user_1 table DROP TABLE user_1;

SELECT * FROM user_1;
/
/
Display all records from user_1 table

-- SELECT username FROM users; // Display only the username column from users table

DROP TABLE user_1;

-- alter table to add a new column
-- add a new column ,change the data type of an existing column, and drop a column

ALTER TABLE user_1
ADD COLUMN password VARCHAR(255) DEFAULT 'password' NOT NULL;

SELECT * FROM user_1;
/
/
Display all records from user_1 table

-- create a new table for departments
--Each department has a unique ID and a name
CREATE TABLE Departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);
-- Insert sample data into Departments table
INSERT INTO
    Departments (department_name)
VALUES ('Sales'),
    ('Marketing'),
    ('IT');
--DELETE FROM Departments WHERE department_id = 3;
DELETE FROM Departments WHERE department_id = 1;
-- Delete the IT department
SELECT * FROM Departments;
-- Display all records from Departments table

--employee table
-- each employee belongs to a department
CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_id INT,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES Departments (department_id)
);

DELETE FROM Employees WHERE employee_id = 1;
-- Delete the employee with ID 1
SELECT * FROM Employees;
-- Display all records from Employees table
-- Insert sample data into Departments table
INSERT INTO
    Employees (employee_name, department_id)
VALUES ('Alice', 1),
    ('Bob', 2),
SELECT *
FROM Employees;
-- Display all records from Employees table

CREATE Table courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_description VARCHAR(255),
    published_date DATE
);

insert into
    courses (
        course_name,
        course_description,
        published_date
    )
VALUES (
        'Introduction to SQL',
        'Learn the basics of SQL',
        '2023-01-01'
    ),
    (
        'Advanced SQL Techniques',
        'Explore advanced SQL concepts',
        '2023-02-01'
    ),
    (
        'Database Design Principles',
        'Understand database design best practices',
        '2023-03-01'
    ),
    (
        'SQL Performance Tuning',
        'Optimize SQL queries for better performance',
        '2023-04-01'
    );

--update data base row
--syntax: UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;
UPDATE courses
SET
    course_name = 'condition',
    course_description = 'im testing update condition',
    published_date = '2025-08-06'
WHERE
    course_id > 1
    OR course_id < 4;
-- Update course description for course_id 1



--DELETE FROM courses WHERE course_id = 2;
DELETE FROM courses WHERE course_id = 3;

-- Step 1: Create the Departments table
CREATE TABLE IF NOT EXISTS Departments (
    department_id SERIAL PRIMARY KEY,
    department_name TEXT NOT NULL
);

-- Step 2: Insert some sample departments
INSERT INTO Departments (department_name)
VALUES ('Engineering'), ('HR');

DROP TABLE Departments;

SELECT * FROM Departments;

-- Step 3: Create the Employees table with FK to Departments
CREATE TABLE IF NOT EXISTS Employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    salary INTEGER NOT NULL,
    joining_date DATE NOT NULL,
    department_id INTEGER NOT NULL,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES Departments (department_id)
);

DROP TABLE Employees;

-- Step 4: Insert employees referencing valid department_ids
INSERT INTO Employees (employee_name, email, salary, joining_date, department_id)
VALUES
    ('John Doe', 'john.doe@example.com', 50000, '2022-01-01', 1),
    ('Jane Smith', 'jane.smith@example.com', 60000, '2022-02-01', 2),
    ('Alice Johnson', 'alice.johnson@example.com', 55000, '2022-03-01', 1),
    ('Bob Brown', 'bob.brown@example.com', 48000, '2022-04-01', 2),
    ('Charlie White', 'charlie.white@example.com', 52000, '2022-05-01', 1),
    ('David Lee', 'david.lee@example.com', 50000, '2022-06-01', 1),
    ('Eve Green', 'eve.green@example.com', 60000, '2022-07-01', 2),
    ('Frank Brown', 'frank.brown@example.com', 55000, '2022-08-01', 1),
    ('George White', 'george.white@example.com', 48000, '2022-09-01', 2),
    ('Hannah Johnson', 'hannah.johnson@example.com', 52000, '2022-10-01', 1),
    ('Ian Smith', 'ian.smith@example.com', 50000, '2022-11-01', 1),
    ('Julia Doe', 'julia.doe@example.com', 60000, '2022-12-01', 2),
    ('Kevin Johnson', 'kevin.johnson@example.com', 55000, '2023-01-01', 1),
    ('Laura Brown', 'laura.brown@example.com', 48000, '2023-02-01', 2),
    ('Matthew White', 'matthew.white@example.com', 52000, '2023-03-01', 1),
    ('Natalie Lee', 'natalie.lee@example.com', 50000, '2023-04-01', 1),
    ('Olivia Green', 'olivia.green@example.com', 60000, '2023-05-01', 2),
    ('Patrick Brown', 'patrick.brown@example.com', 55000, '2023-06-01', 1),
    ('Quinn Johnson', 'quinn.johnson@example.com', 48000, '2023-07-01', 2),
    ('Rebecca White', 'rebecca.white@example.com', 52000, '2023-08-01', 1),
    ('Sarah Doe', 'sarah.doe@example.com', 50000, '2023-09-01', 1),
    ('Thomas Smith', 'thomas.smith@example.com', 60000, '2023-10-01', 2),
    ('Uma Johnson', 'uma.johnson@example.com', 55000, '2023-11-01', 1),
    ('Victor Brown', 'victor.brown@example.com', 48000, '2023-12-01', 2),
    ('Walter White', 'walter.white@example.com', 52000, '2024-01-01', 1),
    ('Xavier Lee', 'xavier.lee@example.com', 50000, '2024-02-01', 1),
    ('Yvonne Green', 'yvonne.green@example.com', 60000, '2024-03-01', 2),
    ('Zoe Johnson', 'zoe.johnson@example.com', 55000, '2024-04-01', 1);

-- Step 5: View some employee details
-- Select all columns for all employees
SELECT * FROM Employees;

-- Select only employee name and email for all employees
SELECT employee_name, email FROM Employees;

-- Select all employees with a salary greater than 50,000
-- AND less than 90,000

SELECT * FROM Employees WHERE salary >50000 AND salary < 90000;
-- Select all employees with a salary either greater than 80,000 or less than 50,000
SELECT * FROM Employees WHERE salary >80000 OR salary < 50000;

-- Select all employees whose name contains the letter 'a'
SELECT * FROM Employees WHERE employee_name LIKE '%a%';

-- Select all employees who joined in the year 2022
-- Select all employees who joined in the year 2022
SELECT * FROM Employees WHERE joining_date BETWEEN '2022-01-01' AND '2022-12-31';

-- Select all employees who joined before or on January 1, 2023
SELECT * FROM Employees WHERE joining_date <= '2023-01-01';

-- Select all employees except 'John Doe' note: not equal
SELECT * FROM Employees WHERE employee_name <> 'John Doe';

-- Select all employees ordered by salary in ascending order
SELECT * FROM Employees ORDER BY salary ASC;

-- Select all employees ordered by salary in descending order
SELECT * FROM Employees ORDER BY salary DESC;


-- Select all employees except 'John Doe'
-- with a salary greater than 50,000
-- or 'Jane Smith'
SELECT * FROM Employees WHERE employee_name <> 'John Doe'
AND salary > 50000 OR employee_name = 'Olivia Green';

SELECT * FROM Employees ORDER BY employee_name ASC  LIMIT 10 OFFSET 2;
