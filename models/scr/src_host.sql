WITH raw_hosts AS (
    SELECT
        *
       from {{source ('airbnb','host')}}
)
SELECT
    id AS host_id,
    NAME AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts
