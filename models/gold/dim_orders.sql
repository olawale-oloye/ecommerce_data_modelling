with silver_orders as (
    select * from {{ ref('silver_orders') }}
)
select
    row_number() over(order by id) as order_sk,
    id,
    customer_id,
    shipping_address_id,
    order_date,
    status as order_status,
from silver_orders
