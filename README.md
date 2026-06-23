# Day 6: Data Cleaning with Excel Power Query & SQL

## Overview
This repository contains my practical exercises for Day 6 of the Data Analytics Level III course. The focus of this activity is on identifying and fixing common data quality issues such as duplicates, missing values, inconsistent formatting, and junk data. 

Data cleaning is a critical step in the data analysis process, as analyzing dirty data leads to inaccurate results and bad business decisions.

## Repository Structure
This project is divided into three main parts:

* **PowerQuery/**
  * Contains the original `Day06_messy_data.csv` file.
  * Contains the cleaned output file `Day06_PQ_Cleaning_RynJsnDqg.xlsx`.
  * Showcases skills in using Excel Power Query to remove duplicates, handle blank rows, standardize text casing, trim spaces, and format dates.

* **SQLQuery/**
  * Contains the `Day06_practice.db` SQLite database.
  * Contains the `Day06_SQL_Cleaning_RynJsnDqg.sql` script.
  * Demonstrates the use of SQL commands (`SELECT DISTINCT`, `UPDATE`, `DELETE`, `LOWER`, `TRIM`) to find and permanently fix data inconsistencies directly within a database.

* **Journal/**
  * Contains my reflection on the data cleaning process, comparing the visual approach of Power Query with the batch processing power of SQL.

## Key Skills Demonstrated
* **Data Profiling:** Finding unique values and spotting inconsistencies before applying fixes.
* **Text Standardization:** Fixing mixed casing in City, Region, Category, and Status columns.
* **Handling Missing Data:** Safely dealing with blank rows, 'N/A' text in numeric columns, and `NULL` values in SQL databases.
* **Data Type Conversion:** Ensuring dates and numbers are properly formatted for analysis.
* **Documentation:** Creating a QA Report to track exactly what changes were made to the dataset.

## Tools Used
* Microsoft Excel (Power Query)
* SQL (SQLite)

