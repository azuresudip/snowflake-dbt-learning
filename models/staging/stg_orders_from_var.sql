select
  order_id,
  customer_id,
  product_id,
  order_date,
  quantity,
  order_status,
  total_amount
from {{ source('raw', 'ORDERS') }}
where order_date >= to_date('{{ var('order_start_date' , '2026-01-01') }}')
