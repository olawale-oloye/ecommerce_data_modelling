with product_snapshot as (
    select * from {{ ref('snapshot_products') }}
),
dim_categories as (
    select * from {{ ref('dim_categories') }}
)
select
    row_number() Over(order by p.id, p.dbt_valid_from) as product_sk,
    p.id,
    p.name,
    p.description,
    p.price,
    c.categories_sk,
    p.is_active,
    p.dbt_valid_from as effective_date,
    p.dbt_valid_to as expiry_date,
    case when p.dbt_valid_to is null then true else false end as is_current,
    row_number() over (partition by p.id order by p.dbt_valid_from) as version
from product_snapshot p
left join {{ref('dim_categories')}} c on p.category_id = c.id
