with silver_orders as (
    select * from {{ ref('silver_orders') }}
)
select
    row_number() over(order by id) as order_sk,
    id,
    status as order_status,
from silver_orders
