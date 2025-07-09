with scd_raw_customer AS (
    SELECT * FROM {{source('airbnb','customer')}}
)
SELECT * FROM scd_raw_customer
WHERE DBT_VALID_TO is null