{{
    config(
        materialized='table'
    )
}}
select 
order_id, quantity,order_status,
{{IND_to_USD('total_amount')}} as total_amount_dollars
from
{{ source('raw', 'ORDERS') }}