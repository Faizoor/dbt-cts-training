{{ config( materialized = 'table', schema='transforming')}}

select * from {{ ref('stg_orders')}}
where order_id > ({{ var('var_order_id',30)}})