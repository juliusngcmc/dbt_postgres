WITH raw_hosts AS (
    SELECT
    *
    FROM
    "postgres"."dbo"."raw_hosts"
)
SELECT
    RENAME ID TO host_id,
    RENAME NAME TO host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts