{{ config(materialized='table') }}

anime_details AS (
    SELECT
        details_id,
        related_manga,
        voice_actors,
        staff,
        content_warning
    FROM
        all_anime
)

SELECT * FROM anime_details
