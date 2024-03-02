/*
- Using MySQL
- Query a count of the number of cities in CITY having a Population larger than .
*/
SELECT
    count(*)
FROM CITY
WHERE POPULATION > 100000;