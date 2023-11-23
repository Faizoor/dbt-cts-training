{{ config ( schema='staging', materialized='table') }}

select id as customer_id ,
first_name,
last_name

from JAFFLESHOP.RAW.customers 