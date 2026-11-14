{{
    config(
        materialized='table'
    )
}}

with cte as
(
    select * from {{ source('raw', 'CUSTOMERS') }}
)
select customer_id , first_name , last_name
from 
cte