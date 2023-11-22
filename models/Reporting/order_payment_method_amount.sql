
{% set paymentmethods = get_payment_methods()  %}

select
orderid,
{% for paymentmethod in paymentmethods %}
sum(case when paymentmethod = '{{paymentmethod}}' then amount end) as {{paymentmethod}}_amount,
{% endfor %}
sum(amount) as total_amount
from {{ ref('stg_payment') }}
group by 1
