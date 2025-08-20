with base_order_items AS (
select * from {{ref('silver_order_items')}}

)

select * from base_order_items