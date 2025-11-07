USE master;
GO

--Drop and recreate the 'IDA' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'iDA')
BEGIN
    ALTER DATABASE IDA SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE IDA;
END;
GO

--Create the 'IDA' database
CREATE DATABASE IDA;
GO

USE IDA;
GO

--Create Schemas
CREATE SCHEMA ida
