{{
    config(
        materialized='view'
    )
}}
WITH src_listings AS (
    SELECT * FROM {{ ref("src_listings") }}
)
SELECT
    LISTING_ID,
    LISTING_NAME,
    room_type,
    CASE
        WHEN minimum_nights = 0 THEN 1
        ELSE minimum_nights
    END AS minimum_nights,
    host_id,
    REPLACE(
        price_str,
        '$'
    ) :: NUMBER(
        10,
        2
    ) AS price,
    CREATED_AT,
    UPDATED_AT 
FROM src_listings