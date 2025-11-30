create database UniversityStagingDB

CREATE TABLE Year1Modules(
	ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	DateInserted DATETIME2 DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE Year2Modules(
	ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	DateInserted DATETIME2 DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE Year3Modules(
	ID int PRIMARY KEY IDENTITY(1,1),
	ModuleCode varchar (50) NULL,
	ModuleName varchar (500) NULL,
	Credits int NULL,
	Category varchar(500) NULL,
	DateInserted DATETIME2 DEFAULT CURRENT_TIMESTAMP);