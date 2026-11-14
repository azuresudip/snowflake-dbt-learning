{{ config(
    materialized='incremental',
    incremental_strategy='append'
) }}

select
    order_id,
    customer_id,
    product_id,
    order_date,
    quantity,
    order_status,
    total_amount
from {{ source('raw', 'ORDERS') }}

{% if is_incremental() %}
  where order_date > (
    select coalesce(max(order_date), '1900-01-01'::date)
    from {{ this }}
  )
{% endif %}