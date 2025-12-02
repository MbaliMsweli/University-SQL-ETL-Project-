
 -----Inserting data in DW_Year1Modules Table----
INSERT INTO [UniversityDW].[dbo].[DW_Year1Modules] (
	ModuleCode ,
	ModuleName ,
	Credits ,
	Category,
	LoadDate)
SELECT
   StagingTable.[ModuleCode],
   StagingTable.[ModuleName],
   StagingTable.[Credits],
   StagingTable.[Category],
    StagingTable.[DateInserted]
FROM
    [UniversityStagingDB].[dbo].[Year1Modules] AS StagingTable
WHERE NOT EXISTS (
    SELECT 1
    FROM[UniversityDW].[dbo].[DW_Year1Modules] AS DWH
    WHERE DWH.DW_ID = StagingTable.ID

    -----Inserting data in DW_Year2Modules Table----
INSERT INTO [UniversityDW].[dbo].[DW_Year2Modules] (
	ModuleCode ,
	ModuleName ,
	Credits ,
	Category,
	LoadDate)
SELECT
   S.[ModuleCode],
   S.[ModuleName],
   S.[Credits],
   S.[Category],
   S.[DateInserted]
FROM
    [UniversityStagingDB].[dbo].[Year2Modules] AS S
WHERE NOT EXISTS (
    SELECT 1
    FROM[UniversityDW].[dbo].[DW_Year2Modules] AS DWH
    WHERE DWH.DW_ID = S.ID

 -----Inserting data in DW_Year3Modules Table----
INSERT INTO [UniversityDW].[dbo].[DW_Year3Modules] (
	ModuleCode ,
	ModuleName ,
	Credits ,
	Category,
	LoadDate)
SELECT
   S.[ModuleCode],
   S.[ModuleName],
   S.[Credits],
   S.[Category],
   S.[DateInserted]
FROM
    [UniversityStagingDB].[dbo].[Year3Modules] AS S
WHERE NOT EXISTS (
    SELECT 1
    FROM[UniversityDW].[dbo].[DW_Year3Modules] AS DWH
    WHERE DWH.DW_ID = S.ID