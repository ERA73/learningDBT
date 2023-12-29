{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}
WITH src_reviews AS (
    SELECT * FROM {{ref("src_reviews")}}
)
SELECT
  {{ dbt_utils.generate_surrogate_key(['listing_id', 'review_date', 'reviewer_name', 'review_text']) }} as review_id,
  *
FROM src_reviews
WHERE review_text is not null
{% if is_incremental() %}
  AND review_date > (SELECT max(review_date) from {{this}})
{% endif %}

{# SELECT * FROM "AIRBNB"."DEV"."FCT_REVIEWS" WHERE listing_id = 3176 #}

{# INSERT INTO "AIRBNB"."DEV"."FCT_REVIEWS" VALUES (3176, CURRENT_TIMESTAMP(), 'Zoltan', 'excellent stay!', 'positive') #}