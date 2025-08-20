with raw_order_items as (
    SELECT 
    ORDER_ID, PRICE_PER_UNIT, PRODUCT_ID, QUANTITY 
     FROM 
    {{source('ecommerce_data_modelling', 'ORDER_ITEMS')}}
) 


SELECT * FROM raw_order_items

