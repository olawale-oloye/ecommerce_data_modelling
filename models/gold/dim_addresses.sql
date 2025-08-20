with Dim_addresses AS (
select
    row_number() over(order by sild.ID) as addresses_sk,
    *
 from {{ref('silver_addresses')}} sild

)

select * from Dim_addresses