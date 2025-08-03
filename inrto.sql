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

INSERT INTO user_1  VALUES 
(1, 'john_doe', 'VXt8A@example.com', 25),
(2, 'jane_smith', '6Bd1o@example.com', 30),
(3, 'alice_jones', 'mHr6r@example.com', 28),
(4, 'bob_brown', 'hD3Pn@example.com', 35),
(5, 'charlie_white', 'OYBdU@example.com', 40)

RETURNING *;
-- update table values
UPDATE user_1 SET username = 'mohi' ,email = 'mohiu5204@gmail.com'  WHERE user_id = 1; // Update username, email for user_id 1




-- truncate its delete all records without deleting the table
TRUNCATE TABLE user_1; // Delete all records from user_1 table
DROP TABLE user_1;
SELECT * FROM user_1; // Display all records from user_1 table

-- SELECT username FROM users; // Display only the username column from users table

DROP TABLE user_1;

-- alter table to add a new column
-- add a new column ,change the data type of an existing column, and drop a column

ALTER TABLE user_1
ADD COLUMN password VARCHAR(255) DEFAULT 'password' NOT NULL;


SELECT * FROM user_1; // Display all records from user_1 table