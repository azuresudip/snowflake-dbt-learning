select
customer_id,
{{clean_text('first_name')}} as first_name_clean,
last_name
from
{{ source('raw', 'CUSTOMERS') }}