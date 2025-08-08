with customers_table as (
    SELECT * FROM 
    {{source('ecommerce_data_modelling', 'customers')}}
) 
SELECT id FROM customers_table

 