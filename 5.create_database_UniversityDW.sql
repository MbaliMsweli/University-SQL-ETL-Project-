create database UniversityDW

CREATE TABLE DW_Year1Modules(
	DW_ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	LoadDate DATETIME2 DEFAULT CURRENT_TIMESTAMP);


	CREATE TABLE DW_Year2Modules(
	DW_ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	LoadDate DATETIME2 DEFAULT CURRENT_TIMESTAMP);


	CREATE TABLE DW_Year3Modules(
	DW_ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	LoadDate DATETIME2 DEFAULT CURRENT_TIMESTAMP);

