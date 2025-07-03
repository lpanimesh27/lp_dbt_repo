WITH src_customer AS (
  SELECT
    *
  FROM
     {{ ref('src_customer') }}
)
SELECT
*
FROM src_customer


