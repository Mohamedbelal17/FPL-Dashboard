# 🏆 Fantasy Premier League (FPL) Dashboard – Power BI


## 📌 Overview  
This project presents an **interactive Fantasy Premier League (FPL) Dashboard** built using **Microsoft Power BI**.  
It delivers insights into player performance, team strengths, and key FPL statistics to help managers make data-driven decisions.  

The dashboard combines **data cleaning with SQL**, **data integration via SSIS**, and **advanced DAX calculations** to produce an optimized and interactive user experience.  

---

## 🔹 Key Features  
- **Custom KPIs** – Total Points, Goals, Assists, Clean Sheets, xG, and xA  
- **Interactive Filters** – Filter by player, team, position, or gameweek  
- **Top Player Rankings** – Bar charts for highest point scorers  
- **Position-based Analysis** – Points distribution by position  
- **Team Strength Insights** – Scatter plot comparing team strength vs average points  
- **Dynamic Visuals** – Automatically updates with the latest CSV data imports  

---

## 🛠 Data Preparation Process  

### 1. **Data Integration with SSIS**  
- Used **SQL Server Integration Services (SSIS)** to automate the loading of **CSV files** into a SQL Server database  
- Created an **ETL package** that:  
  - Extracts raw CSV data from the source folder  
  - Transforms column formats and cleans invalid records  
  - Loads clean data into the database for reporting in Power BI  

### 2. **Data Cleaning with SQL**  
- Removed duplicates and inconsistent records  
- Standardized column names and formats  
- Replaced missing values with appropriate defaults  
- Ensured data integrity before loading into the Power BI model  

### 3. **Data Modeling**  
- Built a **star schema** in Power BI with:  
  - **Fact Table** – Player statistics per gameweek  
  - **Dimension Tables** – Players, Teams, Positions, Gameweeks  
- Established relationships with proper cardinality and active filters for seamless reporting  

### 4. **DAX Measures**  
Created measures for:  
- Total Points  
- Goals Scored  
- Assists  
- Expected Goals (xG)  
- Expected Assists (xA)  
- Clean Sheets
