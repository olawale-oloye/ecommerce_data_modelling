with raw_customers as (
    SELECT ID,
    EMAIL, FIRST_NAME, LAST_NAME, CREATED_AT, UPDATED_AT 
     FROM 
    {{source('ecommerce_data_modelling', 'CUSTOMERS')}}
) 



SELECT * FROM raw_customers




