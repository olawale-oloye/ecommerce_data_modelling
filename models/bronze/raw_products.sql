with raw_products as (
    SELECT 
    ID, CATEGORY_ID, NAME, DESCRIPTION, PRICE, STOCK_QUANTITY, IS_ACTIVE, CREATED_AT
, UPDATED_AT 
     FROM 
    {{source('ecommerce_data_modelling', 'PRODUCTS')}}
) 


SELECT * FROM raw_products