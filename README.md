# Strava Fitness Tracker Data Analysis – Python | MySQL | Power BI

![Dashboard Preview](https://github.com/Tulasiram-T/Strava-Fitness-Tracker-Data-Analysis-Python-MySQL-Power-BI/blob/main/Images/Strava%20fitness%20data%20analysis%20dashboard%20screenshot.png)

## 📊 Project Overview
This project analyzes fitness tracker data collected from Strava and related fitness tracking devices.  
The analysis focuses on understanding **daily activity patterns, calorie burn, step counts, and activity intensity levels**.  
The goal is to clean, process, and visualize the data using **Python**, **MySQL**, and **Power BI** to extract actionable insights.

---

## 📂 Dataset
The dataset consists of **18 CSV files** containing daily, hourly, and merged activity data.  
It includes metrics like:

- Daily Steps
- Daily Calories
- Intensity levels (Sedentary, Light, Fair, Very Active)
- Distances by activity type
- MET (Metabolic Equivalent of Task) values
- Activity minutes breakdown

Merged into a single table: `merged_strava_fitness_data`

---

## 🛠 Tools & Technologies Used
- **Python (Pandas, NumPy, Matplotlib, Seaborn)** – Data cleaning & preprocessing
- **MySQL** – Data storage & SQL-based analysis
- **Power BI** – Interactive data visualization
- **GitHub** – Version control & project showcase

---

## 🔍 Analysis Process
1. **Data Cleaning (Python)**
   - Removed null values & duplicates
   - Standardized date formats
   - Merged all 18 CSVs into one table

2. **SQL Analysis**
   - Created `merged_strava_fitness_data` table
   - Wrote queries for daily averages, top active users, calorie trends, and activity breakdowns
   - Example Query:
     ```sql
     SELECT Id, AVG(Steps_daily) AS avg_steps
     FROM merged_strava_fitness_data
     GROUP BY Id
     ORDER BY avg_steps DESC
     LIMIT 10;
     ```

3. **Power BI Dashboard**
   - Created visuals for:
     - Daily steps trend
     - Calories burned by activity type
     - Intensity minutes distribution
     - Distance covered vs. steps
   - Added slicers for **Date** and **User ID**

---

## 📈 Dashboard
The Power BI dashboard includes:
- **Line Chart** – Steps over time
- **Donut Chart** – Distribution of activity intensity
- **Bar Chart** – Calories burned by day
- **KPI Cards** – Average steps, total calories, total distance

---

## 📌 Key Insights
- Users are most active on weekdays, especially in the mornings
- Very Active minutes contribute the most to total calorie burn
- Average daily steps across users: **~8,000**
- Sedentary minutes are significantly higher on weekends

---

