{{ config(materialized='table') }}

anime_analytics AS (
    SELECT
        *
    FROM
        anime_directory
    FULL OUTER JOIN
        anime_details
    ON
        anime_directory.details_id = anime_details.details_id
)

SELECT * FROM anime_analytics