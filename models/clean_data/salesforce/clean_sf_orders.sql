WITH 

raw AS (

    SELECT *
    FROM {{ source ('snowflake', 'orders') }}

)

clean AS (
    SELECT
        ORDER_ID
        ,BRANCH
        ,PROD_ID
        ,PROD_NAME
        ,STATUS
        ,QTY
        ,PRICE
        ,TAX
        ,AMOUNT
    FROM raw
)

SELECT *
FROM clean