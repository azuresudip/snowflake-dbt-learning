select * from {{ ref('stg_products') }}
where
UNIT_PRICE > 300