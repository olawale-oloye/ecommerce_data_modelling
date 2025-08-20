with silver_products as (
    SELECT 
    *
     FROM 
    {{ref('raw_products')}}
) 


SELECT * FROM silver_products