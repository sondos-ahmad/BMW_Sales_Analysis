---part to whole 
with modelCTE as(
select model , sum(sales_volume) as total_sales_volume ,cast(sum(cast(Sales_volume as bigint)*cast(Price_USD as bigint)) as BIGINT) as Total_revenue
from [BMW sales data (2010-2024) ]
group by model ) 
 
 select model ,concat(round(cast(total_sales_volume as float)/sum(total_sales_volume) over(),4)*100,'%') as model_percent_of_volume,
 concat(round(cast(Total_revenue as float)/sum(Total_revenue) over(),4)*100,'%') as model_percent_of_revenue
 from modelCTE
 order by concat(round(cast(total_sales_volume as float)/sum(total_sales_volume) over(),4)*100,'%')

 with regionCTE as (
 select Region , sum(sales_volume) as total_sales_volume ,cast(sum(cast(Sales_volume as bigint)*cast(Price_USD as bigint)) as BIGINT) as Total_revenue
 from [BMW sales data (2010-2024) ]
 group by Region
 )

 select region, concat(round(cast(total_sales_volume as float)/sum(total_sales_volume) over(),4)*100,'%') as region_percent_of_volume,
 concat(round(cast(Total_revenue as float)/sum(Total_revenue) over(),4)*100,'%') as region_percent_of_revenue
 from regionCTE
  order by concat(round(cast(total_sales_volume as float)/sum(total_sales_volume) over(),4)*100,'%')

  select  Transmission, round(cast(total_sales_volume as float)/SUM(total_sales_volume)over(),4)*100 as transimission_percent from (select Transmission , sum(sales_volume) as total_sales_volume
  from [BMW sales data (2010-2024) ]
  group by Transmission) s