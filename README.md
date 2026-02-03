# University SQL ETL Project

In this project, I built a complete SQL ETL (Extract, Transform, Load) pipeline for a university system. The goal was to take raw university module data, clean and structure it, and then load it into a data warehouse where it can be used for reporting and analysis.

This project shows how raw data moves step by step from its original form into a well-designed database that can answer real business questions.

# Project Overview

The project focuses on building a university database system starting from raw data and ending with clean, structured data in a data warehouse.

## The main steps include:

Creating a staging database

Loading raw data into staging tables

Creating a data warehouse database

Transforming and loading data into warehouse tables

Writing queries to analyze the data

## Tools Used and How They Work Together

- SSIS was used to design and control the ETL flow
- SSMS (SQL Server Management Studio) was used to write and manage SQL code for databases and tables

Although the ETL flow runs in SSIS, all databases and tables are created and managed in SSMS.

SSIS connects to SQL Server through connection managers. These connection managers point to the SQL Server instance where the databases are hosted.

## How the Project Was Built

I used SQL Server Integration Services (SSIS) to build this project. I first created an SSIS package called master.dtsx, which controls the entire workflow. This package handles database creation, table creation, and data loading.

### To set up the databases and tables, I used Execute SQL Tasks. These tasks run SQL scripts that create:

The staging database

Staging tables

Datawarehouse database

Datawarehouse tables

#### All creation scripts use IF NOT EXISTS statements, which makes the process safe to run multiple times without causing errors.

First create Staging Database 

Inside the staging database, I created three tables:

Year1Modules

Year2Modules

Year3Modules

### Each table has the following columns:

ID – Unique record identifier

ModuleCode – Module reference code

ModuleName – Name of the module

Credits – Credit value

Category – Module category

DateInserted – Date and time the record was loaded

After the tables were created, data was loaded into them using SSIS Data Flow Tasks.

### Why a Staging Database Is Important

The staging database is used to store raw and uncleaned data exactly as it comes from the source. No changes are made at this stage.

#### This approach is important because it:

Keeps the original data safe

Allows validation and cleaning later

Makes debugging and data checks easier

Loading Data into the Data Warehouse

After loading data into the staging database, I extended the SSIS flow by linking additional Execute SQL Tasks to build and populate the data warehouse.

First, an Execute SQL Task was used to create the data warehouse database. This was followed by another SQL task responsible for creating the data warehouse tables. Just like the staging layer, IF NOT EXISTS statements were used to ensure the process is repeatable and does not fail if the objects already exist.

Once the data warehouse structure was ready, I added another Execute SQL Task to load data from the staging tables into the data warehouse tables.

## The insertion logic moves data from:

Year1Modules → DW_Year1Modules

Year2Modules → DW_Year2Modules

Year3Modules → DW_Year3Modules

During this process, only new records are inserted into the data warehouse. Existing records are skipped by checking for matching ModuleCode values. This helps prevent duplicate data and ensures the data warehouse remains clean and consistent.

Each record is loaded with a load date, allowing tracking of when the data was inserted into the data warehouse.

This step completes the ETL flow by transforming raw staging data into structured, analysis-ready data stored in the data warehouse.

# Stored Procedures SSIS Flow Explained

After completing the ETL process, I created another SSIS package called stored_procedure.dtsx. This package is focused only on creating and managing stored procedures, separate from the main data loading flow.

At this stage, the staging database and the data warehouse database were already created in earlier steps of the project. Because stored procedures must exist inside a database, I reused these existing databases instead of creating new ones.

## How the Process Works

The SSIS flow connects to the existing UniversityStagingDB and creates stored procedures that are responsible for creating staging tables for:

Year 1 modules

Year 2 modules

Year 3 modules

Once the staging stored procedures are in place, the flow continues by connecting to the existing UniversityDW database. Stored procedures are then created to handle the creation of data warehouse tables for:

Year 1 modules

Year 2 modules

Year 3 modules

Each step is linked in sequence to ensure the correct execution order.

# Stored Procedures SSIS Flow Explained

After completing the main ETL process, I created a separate SSIS package called stored_procedure.dtsx.
This package is focused only on creating and managing stored procedures, and it is kept separate from the main data loading flow to keep the project clean, organised , and easy to maintain.

At this stage of the project, both the staging database and the data warehouse database had already been created in earlier steps. Since stored procedures must exist inside a database, I reused these existing databases instead of creating new ones.

## How the Process Works

The SSIS flow first connects to the existing UniversityStagingDB.
In this step, stored procedures are created that are responsible for creating staging tables and inserting data into them for:

Year 1 modules
Year 2 modules
Year 3 modules
These staging stored procedures handle raw and unclean data, which is acceptable at this stage of the ETL process.

Once the staging stored procedures are in place, the SSIS flow continues by connecting to the existing UniversityDW database.
Here, another set of stored procedures is created to create data warehouse tables and insert clean data into them for:

Year 1 modules
Year 2 modules
Year 3 modules
The data warehouse stored procedures load data from the staging tables while applying rules such as removing duplicates and ensuring the data is structured correctly.

## Execution Order

Each step in the SSIS package is linked in sequence to make sure that:

Staging tables and their data are created and loaded first
Data warehouse tables are created and populated only after staging is ready
This step-by-step execution order ensures the ETL process runs smoothly and consistently.

# Conclusion

This project demonstrates how to build a complete ETL process using SQL Server and SSIS. Raw data is first loaded into staging tables, where it can be messy and unclean. The data is then processed, cleaned, and inserted into the data warehouse, where it becomes structured and reliable for analysis.

SSIS is used to control and automate the flow of the process, while SQL is used to create databases, tables, and stored procedures for inserting data into both staging and data warehouse tables. By separating the staging and data warehouse layers, the project ensures that raw data is handled correctly before being used for reporting.

Overall, the project shows how a well-designed ETL process allows staging and data warehouse layers to work together to produce clean, trusted data that supports accurate reporting and better decision-making.

