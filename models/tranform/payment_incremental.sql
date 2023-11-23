{{
    config
    ( 
        materialized='incremental', unique_key='ORDERID' , schema='transforming'
    )
}}
select * from {{ref ("stg_payment")}}
{% if is_incremental() %}
  -- this filter will only be applied on an incremental run
  where _BATCHED_AT > (select max(_BATCHED_AT) from {{ this }})
{% endif %}


