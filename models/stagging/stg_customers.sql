{{ config (database = 'jaffleshop_test', schema='stagging_test') }}

select id as customer_id ,
first_name,
last_name

from JAFFLESHOP.STAGGING.customers 