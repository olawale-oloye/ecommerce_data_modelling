with Dim_categories AS (
select
    row_number() over(order by cat.name) as categories_sk,
    cat.ID, 
    cat.NAME
 from {{ref('silver_categories')}} cat

)

select * from Dim_categories