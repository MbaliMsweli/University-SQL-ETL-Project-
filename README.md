# University SQL ETL Project

This project demonstrates a full SQL ETL pipeline for a university system. It includes staging databases, data warehouse design, data transformation, analytical queries, and stored procedures used to create tables and insert data automatically.

## Project Description

This project shows the process of building a university database system, starting from staging raw data to loading it into a data warehouse for reporting and analysis.

### It includes:

- Creating the staging database

- Inserting data into staging tables

- Creating the data warehouse database

- Transforming and loading data into the warehouse

- Writing queries to answer questions using the cleaned and structured data

### This project covers the key parts of a data pipeline used in data engineering and analytics.

# What is ETL?

## ETL stands for:

Extract – Take data from one place (raw data)
Transform – Clean and structure the data so it is usable
Load – Store the cleaned data into a database for reporting

# How the Project Works

This repository contains SQL scripts that follow this pipeline:

### Create staging database
A temporary database where raw data is first stored.

### Insert data into staging
Load raw or unstructured data into staging tables.

### Create data warehouse database
A structured set of tables designed for reporting and analysis.

### Insert data into the data warehouse
Transform and load data from staging into the final database.

### Run queries on the data warehouse
Show useful results such as student performance, courses taken, and other university metrics.

# Stored Procedures for Creating Tables and Inserting Data

In this project, stored procedures are also used to create tables and insert data automatically.
Instead of writing CREATE TABLE and INSERT statements many times, the logic is saved inside stored procedures and executed when needed.
This makes the project more organized and closer to how real production systems work.
