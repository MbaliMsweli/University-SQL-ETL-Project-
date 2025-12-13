-----Create a stored procedure for Create table Year1Modules

CREATE PROCEDURE Year1Modules_CreateTable
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('UniversityStagingDB.dbo.Year1Modules') AND type = 'U')
    BEGIN
        CREATE TABLE dbo.Year1Modules(
            ID INT PRIMARY KEY IDENTITY(1,1),
            ModuleCode VARCHAR (50) NULL,
            ModuleName VARCHAR (500) NULL,
            Credits INT NULL,
            Category VARCHAR(500) NULL,
            DateInserted DATETIME2 DEFAULT CURRENT_TIMESTAMP

        );
        END
END
GO

EXEC[UniversityStagingDB].[dbo].[Year1Modules_CreateTable];
GO



-----Create a stored procedure for Create table Year2Modules
CREATE PROCEDURE Year2Modules_CreateTable
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('UniversityStagingDB.dbo.Year2Modules') AND type = 'U')
    BEGIN
        CREATE TABLE dbo.Year2Modules(
            ID INT PRIMARY KEY IDENTITY(1,1),
            ModuleCode VARCHAR (50) NULL,
            ModuleName VARCHAR (500) NULL,
            Credits INT NULL,
            Category VARCHAR(500) NULL,
            DateInserted DATETIME2 DEFAULT CURRENT_TIMESTAMP

        );
        END
END
GO

EXEC EXEC[UniversityStagingDB].[dbo].[Year2Modules_CreateTable];
GO


-----Create a stored procedure for Create table Year3Modules
CREATE PROCEDURE Year3Modules_CreateTable
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('UniversityStagingDB.dbo.Year3Modules') AND type = 'U')
    BEGIN
        CREATE TABLE dbo.Year3Modules(
            ID INT PRIMARY KEY IDENTITY(1,1),
            ModuleCode VARCHAR (50) NULL,
            ModuleName VARCHAR (500) NULL,
            Credits INT NULL,
            Category VARCHAR(500) NULL,
            DateInserted DATETIME2 DEFAULT CURRENT_TIMESTAMP

        );
        END
END
GO

EXEC EXEC[UniversityStagingDB].[dbo].[Year3Modules_CreateTable];
GO
