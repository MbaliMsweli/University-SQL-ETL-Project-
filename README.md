#University SQL ETL Project

In this project, I built a complete SQL ETL (Extract, Transform, Load) pipeline for a university system. The goal was to take raw university module data, clean and structure it, and then load it into a data warehouse where it can be used for reporting and analysis.

This project shows how raw data moves step by step from its original form into a well-designed database that can answer real business questions.

#Project Overview

The project focuses on building a university database system starting from raw data and ending with clean, structured data in a data warehouse.

##The main steps include:

Creating a staging database

Loading raw data into staging tables

Creating a data warehouse database

Transforming and loading data into warehouse tables

Writing queries to analyze the data

##Tools Used and How They Work Together

- SSIS was used to design and control the ETL flow
- SSMS (SQL Server Management Studio) was used to write and manage SQL code for databases and tables

Although the ETL flow runs in SSIS, all databases and tables are created and managed in SSMS.

SSIS connects to SQL Server through connection managers. These connection managers point to the SQL Server instance where the databases are hosted.

##How the Project Was Built

I used SQL Server Integration Services (SSIS) to build this project. I first created an SSIS package called master.dtsx, which controls the entire workflow. This package handles database creation, table creation, and data loading.

###To set up the databases and tables, I used Execute SQL Tasks. These tasks run SQL scripts that create:

The staging database

Staging tables

Datawarehouse database

Datawarehouse tables

All creation scripts use IF NOT EXISTS statements, which makes the process safe to run multiple times without causing errors.

First create Staging Database 

Inside the staging database, I created three tables:

Year1Modules

Year2Modules

Year3Modules

###Each table has the following columns:

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

##The insertion logic moves data from:

Year1Modules → DW_Year1Modules

Year2Modules → DW_Year2Modules

Year3Modules → DW_Year3Modules

During this process, only new records are inserted into the data warehouse. Existing records are skipped by checking for matching ModuleCode values. This helps prevent duplicate data and ensures the data warehouse remains clean and consistent.

Each record is loaded with a load date, allowing tracking of when the data was inserted into the data warehouse.

This step completes the ETL flow by transforming raw staging data into structured, analysis-ready data stored in the data warehouse.

