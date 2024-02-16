WITH 

raw AS (

    SELECT *
    FROM {{ source ('snowflake', 'branch') }}

),

clean AS (
    SELECT
        REGION
        ,AREA
        ,BRANCH 
        ,CITY
        ,STATE
        ,ZIP
    FROM raw
)

SELECT *
FROM clean