--- Cumulative analysis 

---cumulative avg price through years since 2010
select year , avg(average_price) over(order by year) as cumulative_avg from
(select year , AVG(price_usd) as average_price
from [BMW sales data (2010-2024) ]
group by year
) t

--- how much total sales_volume has BMW sold since 2010 up to each year ?
select year , sum(total_sales_volume) over(order by year) as running_sales_volume from
(select year , sum(Sales_volume) as total_sales_volume
from [BMW sales data (2010-2024) ]
group by year
) s

---How much total revenue has BMW earned since 2010 up to each year?
select year ,sum(Total_revenue) over(order by year) as running_total_revenue from
(select year , cast(sum(cast(Sales_volume as bigint)*cast(Price_USD as bigint)) as BIGINT) as Total_revenue
from [BMW sales data (2010-2024) ]
group by year) e
