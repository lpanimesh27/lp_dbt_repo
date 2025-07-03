{{ config(
    materialized='incremental',
    unique_key='customer_id',
    incremental_strategy='merge'
) }}

SELECT
  customer_id,
  customer_name,
  updated_at

FROM AIRBNB.RAW.CUSTOMER  -- Using source for direct table reference

{% if is_incremental() %}
  -- Only select new or updated rows since the last run
  WHERE updated_at > (SELECT MAX(updated_at) FROM {{ this }})
{% endif %}
