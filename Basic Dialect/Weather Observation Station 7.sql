/*
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/
SELECT DISTINCT(CITY) FROM STATION 
WHERE 
    CITY LIKE '%a' OR CITY LIKE '%A'
    OR CITY LIKE '%e' OR CITY LIKE '%E'
    OR CITY LIKE '%i' OR CITY LIKE '%I'
    OR CITY LIKE '%o' OR CITY LIKE '%O'
    OR CITY LIKE '%u' OR CITY LIKE '%U';