WITH 

orders AS (
    -- SELECT * FROM {{ ref ('clean_sf_orders') }}
    SELECT * FROM 'clean_sf_orders'
)

select * from orders