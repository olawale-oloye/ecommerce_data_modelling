with silver_order_items as (
    select * from {{ ref('dim_order_items') }}
),

dim_product as (
    select * from {{ ref('dim_products') }}
),
dim_customer as (
    select * from {{ ref('dim_customers') }}
),
dim_address as (
    select * from {{ ref('dim_addresses') }}
),
dim_order as (
    select * from {{ ref('dim_orders') }}
),
dim_date as (
    select * from {{ ref('dim_date') }}
)
select
    {{ dbt_utils.generate_surrogate_key(['oi.order_id', 'oi.product_id']) }} as sale_sk,
    o.order_sk,
    p.product_sk,
    c.customers_sk,
    a.address_sk,
    d.date_sk,
    oi.quantity as quantity_sold,
    oi.price_per_unit as price_per_unit,
    (oi.quantity * oi.price_per_unit) as total_amount,
    o.order_date,
    p.effective_date
from silver_order_items oi
join dim_order o on oi.order_id = o.id
join dim_customer c on o.customer_id = c.id
join dim_address a on o.shipping_address_id = a.id
join dim_date d on cast(o.order_date as date) = d.date
-- Join to the correct version of the product based on the order date
join dim_product p on oi.product_id = p.id
    and o.order_date >= p.effective_date
    and (o.order_date < p.expiry_date or p.expiry_date is null)
