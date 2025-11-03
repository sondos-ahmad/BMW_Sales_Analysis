---change over time analysis

--- What is the average price of total models by year ordered by the avg price ?
select year , avg(price_usd) as Average_Price 
from [BMW sales data (2010-2024) ]
group by year
order by avg(price_usd)

--- What is the average price of each model by year ?
select year , model , avg(price_usd) as Average_Price
from [BMW sales data (2010-2024) ]
group by Year,model
order by model, year, avg(price_usd)

---what is the total sales volume by year ?
select year , sum(Sales_volume) as total_sales_volume
from [BMW sales data (2010-2024) ]
group by year
order by sum(Sales_volume)

---what is the total sales volume for each model by year ?
select year ,model, sum(Sales_volume) as total_sales_volume
from [BMW sales data (2010-2024) ]
group by year,model
order by year, sum(Sales_volume) desc

--- what is the total revenue by year ordered by revenue ?
select year , cast(sum(cast(Sales_volume as bigint)*cast(Price_USD as bigint)) as BIGINT) as Total_revenue
from [BMW sales data (2010-2024) ]
group by year
order by Total_revenue 

---what is the total revenue of each model by year ordered by year and total revenue ?
select year ,model, cast(sum(cast(Sales_volume as bigint)*cast(Price_USD as bigint)) as BIGINT) as Total_revenue
from [BMW sales data (2010-2024) ]
group by year,model
order by Total_revenue 