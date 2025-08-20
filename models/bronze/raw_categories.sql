with raw_categories as (
    SELECT 
    ID, NAME, 
     FROM 
    {{source('ecommerce_data_modelling', 'CATEGORIES')}}
) 


SELECT * FROM raw_categories
