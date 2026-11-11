{{
    config(
        materialized='ephemeral'
    )
}}
select * from {{ source('raw', 'ORDERS') }}
WHERE
ORDER_STATUS <>'CANCELLED'