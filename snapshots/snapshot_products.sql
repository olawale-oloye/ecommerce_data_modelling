{% snapshot snapshot_products %}

{{
    config(
      target_schema='snapshots',
      unique_key=['name'],
      strategy='timestamp',
      updated_at='updated_at'
    
    )
}}

select
    *,
    -- The category_id will be replaced by category_sk in the final dimension
    -- This snapshot serves as the historical source for the final dimension model
    {{ dbt_utils.generate_surrogate_key(['id']) }} as products_sk
from {{ ref('raw_products') }}

{% endsnapshot %}
