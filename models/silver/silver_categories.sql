with silver_categories as (
    SELECT 
    ID, NAME 
     FROM 
    {{ref("raw_categories")}}
) 


SELECT * FROM silver_categories
