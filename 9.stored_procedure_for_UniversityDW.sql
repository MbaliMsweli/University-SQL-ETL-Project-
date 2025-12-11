-----Create a stored procedure for DW Create table Year1Modules
CREATE PROCEDURE Year1Modules_DWCreateTable
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('UniversityDW.dbo.DW_Year1Modules') AND type = 'U')
    BEGIN
        CREATE TABLE dbo.DW_Year1Modules(
           DW_ID int PRIMARY KEY IDENTITY(1,1),
	       ModuleCode varchar (50) NULL,
	       ModuleName varchar (500) NULL,
	       Credits int NULL,
	       Category varchar(500) NULL,
	       LoadDate DATETIME2 DEFAULT CURRENT_TIMESTAMP
            );
        END
END
GO

EXEC Year1Modules_DWCreateTable;
GO


-----Create a stored procedure for DW Create table Year2Modules
CREATE PROCEDURE Year2Modules_DWCreateTable
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('UniversityDW.dbo.DW_Year2Modules') AND type = 'U')
    BEGIN
        CREATE TABLE dbo.DW_Year2Modules(
           DW_ID int PRIMARY KEY IDENTITY(1,1),
	       ModuleCode varchar (50) NULL,
	       ModuleName varchar (500) NULL,
	       Credits int NULL,
	       Category varchar(500) NULL,
	       LoadDate DATETIME2 DEFAULT CURRENT_TIMESTAMP
            );
        END
END
GO

EXEC Year2Modules_DWCreateTable;
GO


-----Create a stored procedure for DW Create table Year3Modules
CREATE PROCEDURE Year3Modules_DWCreateTable
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('UniversityDW.dbo.DW_Year3Modules') AND type = 'U')
    BEGIN
        CREATE TABLE dbo.DW_Year3Modules(
           DW_ID int PRIMARY KEY IDENTITY(1,1),
	       ModuleCode varchar (50) NULL,
	       ModuleName varchar (500) NULL,
	       Credits int NULL,
	       Category varchar(500) NULL,
	       LoadDate DATETIME2 DEFAULT CURRENT_TIMESTAMP
            );
        END
END
GO

EXEC Year3Modules_DWCreateTable;
GO
