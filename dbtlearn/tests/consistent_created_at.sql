WITH fr AS(
    SELECT * FROM {{ ref("fct_reviews") }}
),
dlc AS(
    SELECT * FROM {{ ref("dim_listings_cleansed") }}
)
SELECT
    *
FROM fr
inner JOIN dlc USING (listing_id)
WHERE dlc.created_at >= fr.review_date