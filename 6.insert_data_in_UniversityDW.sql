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