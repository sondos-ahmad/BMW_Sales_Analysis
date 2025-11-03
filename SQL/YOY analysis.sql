---performance analysis 

--- YOY analysis 

with yoyTable as (select year , avg(price_usd) as Average_Price ,sum(Sales_volume) as total_sales_volume,cast(sum(cast(Sales_volume as bigint)*cast(Price_USD as bigint)) as BIGINT) as Total_revenue
from [BMW sales data (2010-2024) ]
group by year ) 

select year , (Average_Price-lag(Average_Price) over(order by year) ) as avg_price_yoy_change,
ROUND((Average_Price-lag(Average_Price) over(order by year))/CAST(lag(Average_Price) over(order by year) AS float),4)*100 AS price_range_YOY_PERCENT,
(total_sales_volume-lag(total_sales_volume) over(order by year) ) as sales_volume_yoy_change,
ROUND((total_sales_volume-lag(total_sales_volume) over(order by year))/CAST(lag(total_sales_volume) over(order by year) AS float),4)*100 AS total_sales_YOY_PERCENT,
(Total_revenue-lag(Total_revenue) over(order by year) ) as total_revenue_yoy_change,
ROUND((Total_revenue-lag(Total_revenue) over(order by year))/CAST(lag(Total_revenue) over(order by year) AS float),4)*100 AS total_revenue_YOY_PERCENT
from yoyTable
