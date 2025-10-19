# 🛒 Walmart Sales Analysis Using Python & SQL

## 📌 Project Overview
This project focuses on analyzing Walmart’s retail sales data using **Python (Pandas)** and **MySQL**.  
It demonstrates an end-to-end data analytics workflow — from **data extraction** and **cleaning** in Jupyter Notebook to **SQL-based exploratory data analysis (EDA)** and **business insights generation**.

---

## 🧰 Tools & Technologies
- **Python** (Pandas, SQLAlchemy)
- **MySQL**
- **VS Code**
- **Jupyter Notebook**
- **Kaggle API**

---

## ⚙️ Project Workflow

### 1. **Data Extraction**
- Connected **Kaggle API** with **VS Code** to fetch the Walmart dataset.  
- Downloaded and unzipped the dataset directly in **Jupyter Notebook**.  

### 2. **Data Cleaning using Pandas**
- Loaded and explored data using the **Pandas** library.  
- Removed **duplicates** and handled **missing values**.  
- Standardized column names and data types for compatibility.  
- Created a new **“total” column** to calculate total sales per transaction.  

### 3. **Database Engine Creation**
- Built a **SQLAlchemy engine** to connect Python with MySQL:
  ```python
  from sqlalchemy import create_engine
  engine = create_engine("mysql+pymysql://root@localhost:3306/walmart_db")

├── data/                # Raw and cleaned datasets
├── notebooks/           # Jupyter notebooks (data cleaning & transformation)
├── sql_queries/         # SQL scripts for EDA and insights
├── reports/             # Analysis documentation
└── README.md            # Project overview


---

Would you like me to also write a **short GitHub project description** (2–3 lines) for the top of your repository page — something catchy and recruiter-friendly like:  
> “End-to-end sales analysis pipeline using Python and SQL — from data extraction via Kaggle API to MySQL-based EDA and business insights.”

