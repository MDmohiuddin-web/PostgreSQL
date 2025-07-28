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


