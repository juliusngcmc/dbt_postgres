WITH raw_reviews AS (
    SELECT
    *
    FROM
    "postgres"."dbo"."raw_reviews"
)
SELECT
    listing_id,
    RENAME DATE TO review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
FROM
    raw_reviews