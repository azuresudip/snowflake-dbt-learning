select
ord.order_id,
ord.customer_id,
ord.quantity,
ord.order_status,
sta.status_description
from
{{ ref('stg_orders') }} ord
inner join
{{ ref('order_status_codes') }} sta
on 
ord.order_status = sta.order_status