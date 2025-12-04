----How many modules exist per year.

SELECT COUNT(DW_ID) AS ModulesYr1 FROM [UniversityDW].[dbo].[DW_Year1Modules];

SELECT COUNT(DW_ID) AS  ModulesYr2 FROM [UniversityDW].[dbo].[DW_Year2Modules];

SELECT COUNT(DW_ID) AS  ModulesYr3 FROM [UniversityDW].[dbo].[DW_Year3Modules];


----Total credits per year.
SELECT SUM(Credits) AS TotalCreditsYr1 FROM [UniversityDW].[dbo].[DW_Year1Modules];

SELECT SUM(Credits) AS  TotalCreditsYr2 FROM [UniversityDW].[dbo].[DW_Year2Modules];

SELECT SUM(Credits) AS  TotalCreditsYr3 FROM [UniversityDW].[dbo].[DW_Year3Modules];


---Module category breakdown (Fundamental, Core, Elective).

SELECT Category,COUNT(ModuleCode) as NumberOfModulesYr1
FROM [UniversityDW].[dbo].[DW_Year1Modules]
GROUP BY Category;

SELECT Category,COUNT(ModuleCode) as NumberOfModulesYr2
FROM [UniversityDW].[dbo].[DW_Year2Modules]
GROUP BY Category;

SELECT Category,COUNT(ModuleCode) as NumberOfModulesYr3
FROM [UniversityDW].[dbo].[DW_Year3Modules]
GROUP BY Category;


-----Find duplicate module codes.

SELECT
    ModuleCode,
    COUNT(ModuleCode) AS DuplicatesYr1
FROM
   [UniversityDW].[dbo].[DW_Year1Modules]
GROUP BY
    ModuleCode
HAVING
    COUNT(ModuleCode) > 1;


SELECT
    ModuleCode,
    COUNT(ModuleCode) AS DuplicatesYr2
FROM
   [UniversityDW].[dbo].[DW_Year2Modules]
GROUP BY
    ModuleCode
HAVING
    COUNT(ModuleCode) > 1;


SELECT
    ModuleCode,
    COUNT(ModuleCode) AS DuplicatesYr3
FROM
   [UniversityDW].[dbo].[DW_Year3Modules]
GROUP BY
    ModuleCode
HAVING
    COUNT(ModuleCode) > 1;


----Combine all modules from all years using UNION ALL.

-- 1. Create the new combined table
CREATE TABLE [UniversityDW].[dbo].CombinedDataTable (
   [CDT_ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleCode] [varchar](50) NULL,
	[ModuleName] [varchar](500) NULL,
	[Credits] [int] NULL,
	[Category] [varchar](500) NULL,
	[LoadDate] [datetime2](7) NULL,
);

-- 2. Insert data from the three source tables using UNION ALL
INSERT INTO [UniversityDW].[dbo].[CombinedDataTable](
      [ModuleCode],
      [ModuleName],
      [Credits],
      [Category],
      [LoadDate])
SELECT [ModuleCode], [ModuleName], [Credits],[Category],[LoadDate]FROM [UniversityDW].[dbo].[DW_Year1Modules]
UNION ALL
SELECT [ModuleCode], [ModuleName], [Credits],[Category],[LoadDate] FROM [UniversityDW].[dbo].[DW_Year2Modules]
UNION ALL
SELECT [ModuleCode],[ModuleName], [Credits],[Category], [LoadDate] FROM [UniversityDW].[dbo].[DW_Year3Modules];

