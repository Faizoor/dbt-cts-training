{{ config(schema = 'staging', materialized = 'table') }}

select  
*

from JAFFLESHOP.RAW.payment