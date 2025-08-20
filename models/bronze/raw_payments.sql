with raw_payment as (
    SELECT 
    ID, ORDER_ID, PAYMENT_METHOD, STATUS, CREATED_AT, UPDATED_AT 
     FROM 
    {{source('ecommerce_data_modelling', 'PAYMENTS')}}
) 


SELECT * FROM raw_payment
