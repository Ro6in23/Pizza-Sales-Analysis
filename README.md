Pizza-Sales-Analysis
Built an end-to-end Pizza Sales Analytics Dashboard using MySQL &amp; Excel. Cleaned 48k+ records with SQL date transformations &amp; created dynamic KPI cards ($817.8K revenue, 49.5K pizzas sold). Designed dynamic slicers &amp; charts analyzing peak order hours, top categories, and best/worst sellers to drive menu decisions.

🍕 Pizza Sales Analytics & Performance Dashboard

An end-to-end data analytics project using MySQL for data cleaning, transformation, and aggregation, and Microsoft Excel for interactive reporting and KPI visualization.
 📊 Interactive Dashboard Overview

🎯 Problem Statement & Requirements

A pizza restaurant chain needed to analyze transactional sales data to monitor overall business performance, understand customer purchasing habits, and optimize menu offerings.
1. Key Performance Indicators (KPIs)
Total Revenue: Sum of the total price of all pizza orders.
Average Order Value (AOV): Average amount spent per order (`Total Revenue / Total Orders`).
Total Pizzas Sold: Sum of the quantities of all pizzas sold.
Total Orders: Total count of distinct orders placed.
Average Pizzas Per Order: Average volume of pizzas per transaction (`Total Pizzas Sold / Total Orders`).


2. Visualization & Charting Requirements
Daily Trend: Bar chart showing daily order volumes to identify peak sales days.
Hourly Trend: Line chart displaying hourly order trends to map peak store operating hours.
Category Breakdown: Percentage of total revenue generated across pizza categories.
Size Distribution: Percentage of total revenue split by pizza sizes (S, M, L, XL, XXL).
Category Sales Volume: Total quantity of pizzas sold per category.
Top 5 & Bottom 5 Sellers: Best and worst-performing pizzas ranked by total sales volume.


🛠️ Data Pipeline & Technical Architecture
Raw Data (CSV) │ ───► │ MySQL Workbench │ ───► │ Microsoft Excel │ │ (48,000+ Records) │ │ (Data Transformation) │───► │ (Interactive Dashboard)
1. Data Cleaning & Standardization (SQL):
    Resolved date formatting inconsistencies (`DD-MM-YYYY` vs `MM/DD/YYYY`) using `STR_TO_DATE()` and `REPLACE()`.
2. Database Integration:
 Connected MySQL directly to Microsoft Excel via Power Query for live dataset ingestion.
3. Dashboard Construction (Excel):
Built dynamic Pivot Tables and linked them to interactive Category/Size Slicers and Timeline Controls.



📈 Key Business Insights & Takeaways
Peak Ordering Times: Order volume spikes significantly during Fridays and Saturdays, with peak operating hours occurring during Lunch (12 PM – 1 PM) and Dinner (5 PM – 7 PM).
 Product Preferences: The Classic category drives the highest revenue and volume share, while Large (L) size pizzas account for nearly 45.9% of total sales[cite: 6, 8].
Menu Optimization: The Classic Deluxe leads as the top-performing seller, whereas items like The Brie Carre show underperformance, signaling opportunities for menu restructuring[cite: 6, 8].

