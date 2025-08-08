with customers_table as (
    -- SELECT * FROM ECOMMERCE_DWH.ECOMMERCE_STAGING.customers
    SELECT * FROM 
    {{source('ecommerce_data_modelling', 'customers')}}
) 
SELECT id FROM customers_table

 