WITH base_silver AS (
SELECT * from {{ref('raw_customers')}}
),

customer_transformed AS (
select 
id,
upper(email) as email,
upper(first_name) as first_name,
upper(last_name) as last_name,
created_at,
updated_at
from base_silver
)

SELECT * from customer_transformed