with Dim_customers AS (
select
    row_number() over(order by cs.ID) as customers_sk,
    *
 from {{ref('silver_customers')}} cs

)

select * from Dim_customers