{{ config(materialized='view') }}

with source as (

    select * from {{ ref('stg_orders') }}
)

select ORDER_ID , CUSTOMER_ID , PRODUCT_ID , QUANTITY
from
source