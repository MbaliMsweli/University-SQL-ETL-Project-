---CREATE DATABASE: UniversityDW

IF NOT EXISTS(
SELECT name
FROM sys.databases
WHERE name = 'UniversityDW'
)
BEGIN
CREATE DATABASE UniversityDW
END

---CREATE TABLE: UniversityDW.dbo.DW_Year1Modules

IF NOT EXISTS (
    SELECT * FROM sys.objects 
    WHERE object_id = OBJECT_ID('UniversityDW.dbo.DW_Year1Modules') 
      AND type = 'U'
)
BEGIN
CREATE TABLE DW_Year1Modules(
	DW_ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	LoadDate DATETIME2 DEFAULT CURRENT_TIMESTAMP);
END

---CREATE TABLE: UniversityDW.dbo.DW_Year2Modules

IF NOT EXISTS (
    SELECT * FROM sys.objects 
    WHERE object_id = OBJECT_ID('UniversityDW.dbo.DW_Year2Modules') 
      AND type = 'U'
)
BEGIN
	CREATE TABLE DW_Year2Modules(
	DW_ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	LoadDate DATETIME2 DEFAULT CURRENT_TIMESTAMP);
END

---CREATE TABLE: UniversityDW.dbo.DW_Year3Modules

IF NOT EXISTS (
    SELECT * FROM sys.objects 
    WHERE object_id = OBJECT_ID('UniversityDW.dbo.DW_Year3Modules') 
      AND type = 'U'
)
BEGIN
	CREATE TABLE DW_Year3Modules(
	DW_ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	LoadDate DATETIME2 DEFAULT CURRENT_TIMESTAMP);
END
