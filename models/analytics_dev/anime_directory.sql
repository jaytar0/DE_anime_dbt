{{ config(materialized='table') }}

with anime_directory AS (
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
        release_year
    FROM
        ANIME_DATA.DBT_ANIME.ANIME_ANALYTICS
)

SELECT * FROM anime_directory