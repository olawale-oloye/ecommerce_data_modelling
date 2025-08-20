with silver_order_items as (
    select roi.*,
roi.price_per_unit * roi.quantity as calc_total_amount,
from {{ref('raw_order_items')}} roi
left join {{ref('raw_orders')}} ro
on roi.order_id = ro.id

) 

SELECT * FROM silver_order_items



