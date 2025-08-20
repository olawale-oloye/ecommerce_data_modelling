with silver_payments as (
    SELECT 
    * 
     FROM 
    {{ref('raw_payments')}}
) 

SELECT * FROM silver_payments
