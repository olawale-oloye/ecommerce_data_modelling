with customers_table as (
    SELECT 
UPDATED_AT
    ID, CITY, COUNTRY, CREATED_AT, CUSTOMER_ID, POSTAL_CODE, STATE, STREET, 
     FROM 
    {{source('ecommerce_data_modelling', 'ADDRESSES')}}
) 



SELECT * FROM customers_table
