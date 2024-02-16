WITH 

raw AS (

    SELECT *
    FROM {{ source ('snowflake', 'uss_cost') }}

),

clean AS (
    SELECT 
        PROD_ID
        ,PROD_NAME
        ,USS_COST 
    FROM raw
)

SELECT *
FROM clean