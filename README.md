🛒 Walmart Sales Analysis Using Python & SQL


📌 Project Overview
This project focuses on analyzing Walmart’s retail sales data using Python (Pandas) and MySQL. It demonstrates a complete end-to-end analytics workflow — from data extraction and  cleaning in Jupyter to SQL-based EDA and business insight generation.


🧰 Tools & Technologies
Python (Pandas, SQLAlchemy)
MySQL
VS Code
Jupyter Notebook
Kaggle API


⚙️ Project Workflow

1. Data Extraction
Connected Kaggle API with VS Code to fetch the Walmart dataset.
Downloaded and unzipped data directly in the Jupyter Notebook environment.

2. Data Cleaning using Pandas
Imported and explored data using the Pandas library.
Removed duplicates and handled null values.
Standardized column names and data types for SQL compatibility.
Created a new “total” column to calculate total revenue per transaction.

3. Database Engine Creation
Created a SQLAlchemy engine to connect Python with MySQL:
from sqlalchemy import create_engine
engine = create_engine("mysql+pymysql://root@localhost:3306/walmart_db")
Pushed the cleaned dataset from Pandas DataFrame into MySQL tables for structured analysis.

4. Exploratory Data Analysis (EDA) in SQL
Performed EDA using SQL queries:
Identified top-performing branches and product categories.
Analyzed sales trends across dates and time periods.
Segmented data by customer type, gender, and payment method.
Calculated profit margins, average sales, and revenue growth.

5. Business Insights
Found which branches and hours generated the highest sales.
Highlighted key customer behaviors and sales trends.
Provided actionable insights to support data-driven business decisions.

6. Documentation
Documented every step of the workflow — from data collection to SQL-based analysis.
Uploaded all scripts, SQL queries, and findings to GitHub for reference.


📈 Key Learnings
Using Pandas for advanced data cleaning and transformation.
Building a pipeline from Kaggle → Python → MySQL.
Establishing a database connection with SQLAlchemy.
Applying EDA techniques and solving business problems using SQL.


📂 Project Structure
├── data/                # Raw and cleaned datasets
├── notebooks/           # Jupyter notebooks (data cleaning & transformation)
├── sql_queries/         # SQL scripts for EDA and insights
├── reports/             # Analysis documentation
└── README.md            # Project overview


💡 Future Improvements
Add Power BI / Tableau dashboards for visualization.
Automate data updates using Python scripts.
Extend analysis with forecasting and trend prediction models.
