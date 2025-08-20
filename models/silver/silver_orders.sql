with silver_orders as (
    SELECT 
    ID, CUSTOMER_ID, ORDER_DATE, SHIPPING_ADDRESS_ID, STATUS, TOTAL_AMOUNT, 
    CREATED_AT, UPDATED_AT 
     FROM 
    {{ref('raw_orders')}}
) 


SELECT * FROM silver_orders
