WITH base_address AS (
select * from {{ref('raw_addresses')}}

),
filtered_out_greater_10 AS (
select * exclude country_count from (
select *,
count(id) Over(partition by country) as country_count
from base_address
)
where country_count >= 10

)


select 
row_number() over(order by id) as address_sk,
*
 from filtered_out_greater_10


