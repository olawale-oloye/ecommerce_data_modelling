with customers_table as (
    -- SELECT * FROM {{source('ecommerce_data_modelling','customers')}}
    SELECT * FROM ECOMMERCE_DWH.ECOMMERCE_STAGING.customers
) 
SELECT count(id) FROM customers_table

 