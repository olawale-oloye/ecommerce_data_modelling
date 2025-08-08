with customers_table as (
    SELECT * FROM {{source('ecommerce_dwh','customers')}}
) 
SELECT count(id) FROM customers_table