Product Data Analysis

Overview

This project focuses on analyzing product, sales, and discount data using SQL for backend processing and Power BI for creating insightful visualizations. The goal is to derive actionable insights on revenue, customer behavior, and discount impacts.


---

Project Objectives

Clean and transform raw data to make it analysis-ready.

Perform calculations and create relationships between datasets using SQL.

Visualize trends and patterns using Power BI dashboards.



---

Dataset Details

Three datasets were used in this project:

1. Product Data

Columns:

Product ID, Product, Category, Cost Price, Sales Price, Brand, Description of Product, Image URL.


Purpose: Contains details about products, their costs, and sales prices.



2. Sales Data

Columns:

Date, Customer Type, Country, Product, Discount Band, Units Sold.


Purpose: Includes sales information, customer details, and discount bands.



3. Discount Data

Columns:

Month, Discount Band, Discount.


Purpose: Provides information on discounts associated with different bands.



SQL Highlights

Key tasks performed using SQL:

1. Data Cleaning and Transformation

Removed unwanted characters (e.g., $) and converted columns to appropriate data types.

Extracted month and year from the date column.



2. Data Integration

Joined Product Data, Sales Data, and Discount Data tables to consolidate information.



3. Calculations

Calculated metrics such as:

Total Cost: Based on cost price and units sold.

Revenue: Based on sales price and units sold.

Discounted Revenue: Adjusted revenue after applying discounts.



Power BI Dashboard

The Power BI dashboard provides an interactive visualization of the insights derived:

1. Visualizations:

Stacked Bar Chart: Sum of revenue by country.

Donut Chart: Breakdown of revenue by discount band.

Matrix: Displays customer type, product, and year.

Clustered Column Chart: Sum of revenue by date and year.



2. Design:

Product images displayed at the top enhance dashboard interactivity.



3. Key Insights:

Countries with the highest revenue contributions.

Discount bands influencing sales trends.

Annual revenue growth and seasonal trends.



Files in Repository

SQL File: Contains all queries used for data cleaning, transformation, and analysis.

Power BI Report: Interactive dashboard showcasing the visualizations.

Datasets (CSV): Raw datasets used for the analysis:

product_data.csv

sales_data.csv

discount_data.csv



How to Run the Project

1. SQL Queries:

Import the datasets into MySQL (or any compatible database).

Run the provided SQL file to clean, transform, and analyze the data.



2. Power BI Report:

Open the Power BI file using the Power BI Desktop application.

Explore the interactive dashboard for insights.




Key Learnings

Data preprocessing techniques for SQL-based projects.

Creating relationships between tables using joins.

Building intuitive and interactive dashboards in Power BI.



Acknowledgments

This project was completed as a personal learning exercise to enhance SQL and Power BI skills. Special thanks to open-source datasets for enabling this analysis.
