{{
    config(
        materialized='incremental',
        incremental_strategy='merge',
        unique_key='order_id'
    )
}}
select
    order_id,
    customer_id,
    product_id,
    order_date,
    quantity,
    order_status,
    total_amount
    from
    {{ source('raw', 'ORDERS') }}