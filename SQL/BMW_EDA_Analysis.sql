---Database Exploration 
select * from INFORMATION_SCHEMA.COLUMNS
;

---Dimensions exploration
select distinct Model from [BMW sales data (2010-2024) ];
;

---Date Exploration 
select min(YEAR) AS First_Year , max(YEAR) AS Last_Year ,max(YEAR)-min(YEAR) as time_span FROM [BMW sales data (2010-2024) ];


---Measures Exploraion (Big Numbers)
select 'Count of models' as measure_types , count(distinct model) as measure_value from [BMW sales data (2010-2024) ]
UNION ALL	select   'Total revenue' as measure_types , SUM(cast(Price_USD as bigint)*cast(Sales_Volume as bigint)) as measure_value from [BMW sales data (2010-2024) ]
UNION ALL	select   'Total quantity' as measure_types , SUM(cast(Sales_Volume as bigint)) as measure_value from [BMW sales data (2010-2024) ]
UNION ALL	select   'Average of engine size' as measure_types ,ROUND( AVG(engine_size_l),3) as measure_value from [BMW sales data (2010-2024) ]
UNION ALL   select   'Average mile age' as measure_types , AVG(cast (mileage_km as bigint)) as measure_value from [BMW sales data (2010-2024) ]
UNION ALL	select    'Max mile age' as measure_types , max(Mileage_KM) as measure_value from [BMW sales data (2010-2024) ]
UNION ALL	select    'Minimum mile age' as measure_types , min(Mileage_KM) as measure_value from [BMW sales data (2010-2024) ]
UNION ALL   select   'Maximum price in USD' as measure_types , max(price_USD) as measure_value from [BMW sales data (2010-2024) ]
UNION ALL	select    'Minimum price in USD' as measure_types , min(price_USD) as measure_value from [BMW sales data (2010-2024) ]
UNION ALL	select   'Average price in USD' as measure_types , avg(cast(price_USD as bigint)) as measure_value from [BMW sales data (2010-2024) ];


---Magnitude Analysis and rank analysis combined
---Total quantity by model ranked
select model , sum(sales_volume) as [Total sold Quantities]
from [BMW sales data (2010-2024) ]
group by Model
order by sum(sales_volume) desc;
 
--- total revenue by each model ranked
select model , sum(cast(Price_USD as bigint)*cast(Sales_Volume as bigint)) as [Total revenue]
from [BMW sales data (2010-2024) ]
group by Model
order by sum(cast(Price_USD as bigint)*cast(Sales_Volume as bigint)) desc;

---Total sold quantities by region ranked
select Region , sum(sales_volume) as [Total sold Quantities]
from [BMW sales data (2010-2024) ]
group by Region
order by sum(sales_volume) desc;

--- total revenue by each region ranked
select Region , sum(cast(Price_USD as bigint)*cast(Sales_Volume as bigint)) as [Total revenue]
from [BMW sales data (2010-2024) ]
group by Region
order by sum(cast(Price_USD as bigint)*cast(Sales_Volume as bigint)) desc;

---avg price by model ranked
select model , avg(price_usd) as [Average price]
from [BMW sales data (2010-2024) ]
group by Model
order by avg(price_usd) desc;


