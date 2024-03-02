/*
- Using MySQL
- Query the difference between the maximum and minimum populations in CITY.
*/
SELECT
    max(POPULATION) - min(POPULATION)
FROM CITY;