/*
    This script creates the DatabaseWarehouse database and the bronze, silver, and gold schemas.
    The bronze schema is the raw data schema, the silver schema is the cleaned data schema, and the gold schema is the aggregated data schema.
*/


USE master;
GO

-- Check if the database exists before dropping it
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'DatabaseWarehouse')
BEGIN
    ALTER DATABASE DatabaseWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DatabaseWarehouse;
END;
GO

-- Create the database
CREATE DATABASE DatabaseWarehouse;
GO

-- Use the database
USE DatabaseWarehouse;
GO

-- Create the schema
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO