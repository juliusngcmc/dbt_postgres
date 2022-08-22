WITH raw_listings AS (
    SELECT
    *
    FROM
    "postgres"."dbo"."raw_listings"
)
SELECT
    RENAME ID TO listing_id,
    RENAME NAME TO listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings