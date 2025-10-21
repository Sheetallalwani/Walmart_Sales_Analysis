# 🛒 Walmart Sales Analysis Using Python & SQL

## 📌 Project Overview
This project focuses on analyzing **Walmart’s retail sales data** to uncover business insights and patterns using **Python** and **MySQL**.  
The entire workflow — from **data extraction to analysis** — has been automated through a pipeline, ensuring efficiency and reproducibility.

---

## 🧰 Tools & Technologies
- **Python** (Pandas, SQLAlchemy)  
- **MySQL**  
- **VS Code**  
- **Jupyter Notebook**  
- **Kaggle API** (for data access)

---

## ⚙️ Project Workflow

### 1. Data Extraction
- Connected **Kaggle API** with **VS Code** to fetch the Walmart dataset.  
- Imported the dataset directly into the working environment.
 --

### 2. Data Preparation
Used **Pandas** in Jupyter Notebook to:  
- Unzip and load the dataset.  
- Clean data by removing **duplicates** and handling **null values**.  
- Created a **“total” column** to calculate overall revenue/sales per transaction.

- --

### 3. Database Integration
- Created a **MySQL engine** using **SQLAlchemy** for seamless data transfer.  
- Imported the cleaned dataset into **MySQL** for structured storage and querying.
- --

### 4. Exploratory Data Analysis (EDA)
Performed SQL-based EDA to:  
- Identify **top-performing branches** and **product categories**.  
- Analyze **sales trends over time**.  
- Segment data by **customer type**, **gender**, and **payment method**.  
- Calculate **profit margins**, **average sales**, and **peak sales hours**.  

--
### 5. Business Insights
Answered key business questions such as:  
- Which branch generated the highest revenue?  
- What time of day drives the most sales?  
- How do customer types impact spending patterns?  
Derived insights to support **data-driven decision-making**.

--
### 6. Documentation
- Documented the complete process — from **data extraction** to **business analysis**.  
- Uploaded all **scripts**, **SQL queries**, and **outputs** to GitHub for reference.  

---

## 📈 Key Learnings
- Built a **data pipeline** from Kaggle → Python → MySQL.  
- Integrated **Python and SQL** for end-to-end analytics.  
- Applied **EDA techniques** to uncover actionable insights.  
- Strengthened understanding of **data cleaning, transformation, and reporting**.  

---

## 📂 Project Structure
├── data/ # Raw and cleaned datasets
├── notebooks/ # Jupyter notebooks (data cleaning & transformation)
├── sql_queries/ # SQL scripts for EDA and insights
├── reports/ # Analysis documentation
└── README.md # Project overview


---

## 👩‍💻 Author
**Sheetal Lalwani**  
📧 []  
💻 []
