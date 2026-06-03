-- dbt model（materialized='table'）
{{ config(materialized='table') }}

SELECT
    id,
    who_id,
    who_type,
    what_id,
    what_type,
    subject,
    location,
    start_date_time,
    end_date_time,
    description,
    owner_id,
    system_modstamp,
    retrieve_date,
    is_pii_redacted
FROM {{ ref('stg__campaign') }}
WHERE is_deleted = FALSE