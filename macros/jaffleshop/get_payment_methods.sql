{% macro get_payment_methods() -%}

{% set paymentmethods_query %}
select distinct
paymentmethod
from {{ ref('stg_payment') }}
order by 1
{% endset %}

{% set results = run_query(paymentmethods_query) %}

{% if execute %}
{# Return the first column #}
{% set results_list = results.columns[0].values() %}
{% else %}
{% set results_list = [] %}
{% endif %}

{{ return(results_list) }}

{%- endmacro %}
