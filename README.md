# 🚗 BMW Sales Data Analysis  | 2010 – 2024

This project represents the **Exploratory Data Analysis (EDA) and Full Analysis phase of BMW sales data between **2010 and 2024**.  
It focuses on discovering trends, relationships, and summary statistics using **SQL** and **Power BI**.

---

## 📂 Project Overview
The goal of this analysis is to understand the structure of BMW’s global sales data, identify high-performing models and regions, and prepare insights to answer customer's questions.

**Dataset Duration:** 14 years (2010–2024)

---

**Change Over Time Analysis**

The**average car price** (across all models) ranged between $74,049 — the lowest in 2015, and $75,543 — the highest in 2016.

The **highest average** model price was for the 3 Series in 2020, while the lowest was for the M3 in 2017.

The **highest sales volume** occurred in 2022, followed by 2024, while 2023 recorded the lowest.

The **most sold model** was the X6 in 2024, and the least sold was the M5 in 2016.

In 2024, the **top three models by sales volume** were X6, 5 Series, and 7 Series, while the M3 had the lowest sales, which makes sense since it had the highest average price that year.

The **highest company revenue** was recorded in 2022, followed by 2024, which is justified since these two years saw the highest number of cars sold.

The **X6** generated the highest revenue in 2024, while the M3 had the lowest in the same year.

**Cumulative Analysis**

The **total revenue** from 2010 to 2024 amounted to $19,012,242,534,459.

The **total number of cars sold** during this period was 253,375,734 units.

**Performance Analysis**

The **highest year-over-year** (YoY) percentage increase in the average car price was +2.02% in 2016 (compared to 2015), while the largest decrease was –0.68% in 2015.

The **highest YoY growth** in the number of cars sold occurred in 2024, with a +7.74% increase over the previous year, while the lowest was –9.22% in 2023.

For total revenue, the highest YoY growth was again in 2024 at +7.23%, and the lowest was –8.94% in 2023.

**Part-to-Whole Analysis**

Each model’s share of **total cars sold** was relatively close, ranging between **8.82% and 9.39%**.

Each model’s share of **total revenue** ranged between **8.77% and 9.42%**.

When segmented by region, revenue showed a positive correlation with the number of cars sold (both between 16.35% and 17.1%), while this relationship wasn’t as clear when segmented by model.

Finally, manual cars represented a slightly higher percentage of sales — 50.27%, compared to 49.73% for automatic cars.

**Data Segmentation**

I first examined the minimum, maximum, quartiles, and median for key variables to segment the data properly.

Segmentation was performed based on **Price**, **Mileage**, and **Engine Size**, as these three variables directly influence demand, sales performance, and resale value.

### 🔸 Price Segmentation
The dataset was divided into price categories to identify which price ranges attract the highest demand and contribute the most to total revenue.  
This segmentation helps determine BMW’s strength in the economy, mid-range, or luxury market segments.

### 🔸 Mileage Segmentation
Mileage segmentation provides insights into how car usage affects pricing and sales patterns.  
Lower-mileage vehicles typically represent newer or well-maintained models, while higher-mileage cars tend to have lower resale values.

### 🔸 Engine Size Segmentation
Segmenting by engine size reveals customer preferences for performance versus fuel efficiency.  
Larger engines are usually found in premium models, reflecting BMW’s emphasis on performance and luxury.


## 🧮 Key Findings (EDA Results)

- **Number of Models:** 11  
- **Total Revenue:** \$19,012,242,534,459  
- **Total Quantity Sold:** 253,375,734  
- **Average Engine Size:** 3.247 L  
- **Average Mileage:** 100,307 km  
- **Price Range:**  
  - Minimum: \$30,000  
  - Maximum: \$119,998  
  - Average: \$75,034  

---

### 🔹 Model Insights
- The **7 Series** is the **most sold model**, generating the **highest total revenue** of \$23,786,466.  
- The **X1** and **3 Series** also show strong sales volumes but slightly lower revenue per unit.

### 🔹 Regional Insights
- **Asia** records the **highest total quantity sold** and **maximum revenue**.  
- **Africa** generates the **lowest revenue**, indicating weaker sales performance.

---

## 🧰 Tools Used
| Tool | Purpose |
|------|----------|
| **SQL (PostgreSQL/MySQL)** | Data cleaning and exploratory queries |
| **Power BI** | Visualization of measures, price ranges, and regional performance |
| **Excel/CSV** | Initial data inspection |

---

## 📊 Dashboard Preview
![Dashboard Screenshot](/powerBI/dashboard_screenshot.jpg)

---

## 📁 Project Structure
BMW-Sales-Analysis/
├── SQL/
│ └── BMW_EDA_Analysis.sql
├── PowerBI/
│ ├── BMW_Sales_EDA.pbix
│ └── dashboard_screenshots/
│ └── dashboard_page1.png
├── Data/
│ └── bmw_sales_data.csv
└── README.md

---

## 🧩 Next Steps (Coming Soon)
- 📊 **Full Analysis Phase:** Advanced KPI analysis (YOY, MOM, profitability trends)
- ⚙️ **DAX Calculations:** Measures for performance metrics
- 🌍 **Predictive Insights:** Using Power BI and Python for forecasting

---

## 👩‍💻 Author
**Sondos Ahmad**  
💼 Data Analyst | SQL | Power BI  
📧 Contact: [sondosabdulmaaboud@gmail.com]

---

