with raw_addresses as (
    SELECT 

    ID, CITY, COUNTRY, CREATED_AT, CUSTOMER_ID, POSTAL_CODE, STATE, STREET, UPDATED_AT 
     FROM 
    {{source('ecommerce_data_modelling', 'ADDRESSES')}}
) 


SELECT * FROM raw_addresses
