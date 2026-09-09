# Retail Sales Overview

## About the Project

I built this Power BI dashboard to analyze retail sales data and understand overall sales performance and customer purchasing behavior.

The dashboard helps explore sales across different dates, categories, payment methods, and locations.

## Tools Used

- Power BI
- Power Query
- DAX
- SQL
- Python / Pandas

## Dashboard

The dashboard includes:

- Total Sales
- Total Transactions
- Total Customers
- Average Order Value
- Sales Trend Over Time
- Sales by Payment Method
- Sales by Category
- Sales by Location
- Date, Category, and Location filters

## Data Preparation With Python / Pandas

The raw retail sales data was cleaned and prepared using Python and Pandas before analysis.

The main data preparation steps included:

- Identifying and handling missing values
- Cleaning and standardizing item and category values
- Extracting clean item names from the raw item values
- Filling missing item values based on category information
- Filling missing price-per-unit values using Total Spent and Quantity
- Checking and correcting data types
- Preparing the cleaned dataset for further analysis

The cleaned data was then used for SQL analysis and Power BI reporting.

## SQL Analysis

I used SQL to analyze the cleaned retail sales data.

The queries were used to:

- Find total sales and total transactions
- Compare sales across categories
- Find the percentage of sales from each category
- Find the best-selling items
- Find the top 10 customers by sales
- Check average quantity by category
- Analyze sales based on quantity
- Classify transactions as High, Medium, or Low
- Compare sales performance by category
- Rank categories by total sales

SQL concepts used:

- GROUP BY
- ORDER BY
- COUNT, SUM, AVG
- CASE WHEN
- Subqueries
- CTEs
- Window functions
- RANK()

## Power BI and DAX

The cleaned data was loaded into Power BI to create the interactive sales dashboard.

Power Query was used for data transformation and preparation inside Power BI.

DAX was used to create measures for the dashboard, including:

- Total Sales
- Total Transactions
- Total Customers
- Average Order Value

The dashboard was designed with interactive filters for:

- Date
- Category
- Location

## Key Features

- Interactive Power BI dashboard
- KPI cards for important sales metrics
- Sales trends over time
- Category and location analysis
- Payment method analysis
- Interactive filtering
- Clean and consistent dashboard design

## Project Files

- `retail_python_cleaning` - Python/Pandas data cleaning
- `retail_sales_analysis.sql` - SQL analysis queries
- `RETAIL_VISUAL.pbix` - Power BI dashboard
- `README.md` - Project documentation
