with source as (
    select * from {{ source('raw', 'ORDERS') }}
),
rename as
(
    select ORDER_ID, CUSTOMER_ID, PRODUCT_ID , ORDER_DATE , QUANTITY , ORDER_STATUS
    from
    source
    WHERE
    QUANTITY > 1
)
SELECT * FROM rename

