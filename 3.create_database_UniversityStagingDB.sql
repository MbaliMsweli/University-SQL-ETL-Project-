---CREATE DATABASE: UniversityStagingDB

USE [master]
IF NOT EXISTS (
SELECT name FROM sys.databases 
WHERE name = 'UniversityStagingDB')
BEGIN
    CREATE DATABASE UniversityStagingDB;
END


-- CREATE TABLE: Year1Modules

IF NOT EXISTS (
    SELECT * FROM sys.objects 
    WHERE object_id = OBJECT_ID('UniversityStagingDB.dbo.Year1Modules') 
      AND type = 'U'
)
CREATE TABLE Year1Modules(
	ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	DateInserted DATETIME2 DEFAULT CURRENT_TIMESTAMP);

--- CREATE TABLE: Year1Modules

IF NOT EXISTS (
    SELECT * FROM sys.objects 
    WHERE object_id = OBJECT_ID('UniversityStagingDB.dbo.Year2Modules') 
      AND type = 'U'
)

CREATE TABLE Year2Modules(
	ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	DateInserted DATETIME2 DEFAULT CURRENT_TIMESTAMP);


--- CREATE TABLE: Year3Modules

IF NOT EXISTS (
    SELECT * FROM sys.objects 
    WHERE object_id = OBJECT_ID('UniversityStagingDB.dbo.Year3Modules') 
      AND type = 'U'
)

CREATE TABLE Year3Modules(
	ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	DateInserted DATETIME2 DEFAULT CURRENT_TIMESTAMP);