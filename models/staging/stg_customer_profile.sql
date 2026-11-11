select
{{ dbt_utils.generate_surrogate_key(['customer_id']) }} as customer_profile_key,
customer_id,
first_name,
last_name
from
{{ source('raw', 'CUSTOMERS') }}