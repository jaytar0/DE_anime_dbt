{{ config(materialized='table') }}

anime_directory AS (
    SELECT
        id,
        details_id,
        name,
        type,
        episodes,
        studio,
        tags,
        rating,
        rank,
        release_season,
        CAST(release_year as DATETIME) AS release_year
    FROM
        all_anime
)

SELECT * FROM anime_directory