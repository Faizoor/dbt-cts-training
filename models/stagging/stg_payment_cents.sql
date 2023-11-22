select  
id as payment_id ,
{{ cents_to_dollars('amount')}} as amount_usd 

from JAFFLESHOP.STAGGING.payment