{{ config(materialized='table') }}

with anime_analytics AS (
    SELECT
        UUID_STRING() as id,
        UUID_STRING() as details_id,
        name,
        type,
        episodes,
        studio,
        tags,
        rating,
        rank,
        release_season,
        TO_DATE(CONCAT(TO_CHAR(CAST(release_year AS INTEGER)), '0101'), 'YYYYMMDD') AS release_year,
        related_manga,
        voice_actors,
        staff,
        content_warning
    FROM
        ANIME_DATA.PUBLIC.ALL_ANIME 
)

SELECT * FROM anime_analytics