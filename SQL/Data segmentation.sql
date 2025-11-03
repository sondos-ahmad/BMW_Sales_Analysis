---Data segmentation 
--- Price segmentation 

--- what is the minimum ,maximum and quartiles of my data according to price ?
SELECT 
   distinct MIN(price_usd) over()AS min_price,
    MAX(price_usd) over() AS max_price,
       PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY price_usd) over() AS Q1,
      PERCENTILE_CONT(0.5)  WITHIN GROUP (ORDER BY price_usd) over() AS median_price,
     PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY price_usd) over() AS Q3
FROM [BMW sales data (2010-2024) ]
group by price_usd

--- segment by price 
SELECT 
    Model,
    price_usd,
    CASE 
        WHEN price_usd < 52245.75 THEN 'Economy Segment'
        WHEN price_usd BETWEEN 52245.75 AND 74842 THEN 'Mid-Range Segment'
        WHEN price_usd BETWEEN 74843 AND 97450.75 THEN 'Premium Segment'
        ELSE 'Luxury Segment'
    END AS Price_Segment
FROM [BMW sales data (2010-2024) ]
order by Price_USD

--- what is the minimum ,maximum and quartiles of my data according to mileage ?
SELECT 
   distinct MIN(mileage_km) over()AS min_mileage,
    MAX(Mileage_KM) over() AS max_mileage,
       PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Mileage_KM) over() AS Q1,
      PERCENTILE_CONT(0.5)  WITHIN GROUP (ORDER BY Mileage_KM) over() AS median_price,
     PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Mileage_KM) over() AS Q3
FROM [BMW sales data (2010-2024) ]
group by Mileage_KM

--- segment according to mile age
SELECT 
    Model,
    Mileage_KM,
    CASE 
        WHEN Mileage_km <= 15000 THEN 'Low Mileage'
        WHEN mileage_km BETWEEN 15001 AND 40000 THEN 'Moderate mileage'
        WHEN mileage_km BETWEEN 40001 AND 70000 THEN 'High mileage'
        ELSE 'Very High mileage'
    END AS mileage_Segment
FROM [BMW sales data (2010-2024) ]
order by mileage_km

--- what is the minimum ,maximum and quartiles of my data according to engine size ?
SELECT 
   distinct MIN(engine_size_l) over()AS min_enginesize,
    MAX(engine_size_l) over() AS max_enginesize,
       PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY engine_size_l) over() AS Q1,
      PERCENTILE_CONT(0.5)  WITHIN GROUP (ORDER BY engine_size_l) over() AS median_price,
     PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY engine_size_l) over() AS Q3
FROM [BMW sales data (2010-2024) ]
group by Engine_Size_L

--- segment according to engine size
SELECT 
    Model,
    Engine_Size_L,
    CASE 
        WHEN engine_size_l < 2.375 THEN 'Compact / Entry-Level'
        WHEN engine_size_l BETWEEN 2.375 AND 3.25 THEN 'Mid-Range'
        WHEN engine_size_l BETWEEN 3.251 AND 4.124 THEN 'Performance'
        ELSE 'High-Performance / Luxury'
    END AS Engine_Segment
FROM [BMW sales data (2010-2024) ]
order by Engine_Size_L


