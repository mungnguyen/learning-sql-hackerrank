/*
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
*/
WITH cte AS (
    SELECT
        *,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn
    FROM STATION
)
SELECT
    ROUND(LAT_N, 4)
FROM cte
WHERE rn = (SELECT (ROUND(COUNT(rn)*0.5)) FROM cte)