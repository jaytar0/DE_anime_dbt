{{ config(materialized='table') }}

with anime_details AS (
    SELECT
        details_id,
        related_manga,
        voice_actors,
        staff,
        content_warning
    FROM
        ANIME_DATA.DBT_ANIME.ANIME_ANALYTICS
)

SELECT * FROM anime_details
