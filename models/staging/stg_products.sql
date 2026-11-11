select * from {{ source('raw', 'PRODUCTS') }}
where
stock_quantity > 100