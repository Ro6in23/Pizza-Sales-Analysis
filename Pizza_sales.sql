create database Pizza_db;
select * from pizza_sales;

-- Transforming date column
alter table pizza_sales add column new_order_date date;

select order_date, STR_TO_DATE(REPLACE(order_date, '/', '-'), '%d-%m-%Y') as new_order_date  from pizza_sales;
update pizza_sales
set new_order_date = STR_TO_DATE(REPLACE(order_date, '/', '-'), '%d-%m-%Y');

ALTER TABLE pizza_sales
DROP COLUMN order_date;

-- KPI Requirements

-- Total Revenue
select round(sum(total_price),2) as Total_Revenue from pizza_sales;
-- Average Order Value
select round(sum(total_price)/count(distinct(order_id)),2) as Average_Order_value from pizza_sales;
-- Total Pizzas Sold
select round(sum(quantity),2) as Total_Pizzas_Sold from pizza_sales;
-- Total Orders Placed
select count(distinct(order_id)) as Total_orders from pizza_sales;
-- Average Pizzas per order
select round(sum(quantity)/count(distinct(order_id)),2) as Average_pizzas_per_order from pizza_sales;

-- Chart requirements

-- Daily Trend Chart
SELECT dayname(new_order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY dayname(new_order_date);
-- Hourly Trend Chart
SELECT HOUR(order_time) as order_hours, COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by HOUR(order_time)
order by HOUR(order_time);
-- % of Sales by Pizza Category
SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category;

-- % of Sales by Pizza Size
SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
Order by PCT desc;

-- Total Pizza sold by Pizza category
select pizza_category, sum(quantity) as Total_sales
from pizza_sales 
group by pizza_category
order by Total_sales desc;

-- Top 5 best Sellers by Total Pizzas sold
select pizza_name, sum(quantity) as Top5_best_sales
from pizza_sales 
group by pizza_name
order by Top5_best_sales desc limit 5;

-- Top 5 worst Sellers by Total Pizzas sold
select pizza_name, sum(quantity) as Top5_best_sales
from pizza_sales 
group by pizza_name
order by Top5_best_sales asc limit 5;
















