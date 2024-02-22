/*
Using SQL
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
*/
SELECT DISTINCT(CITY)
FROM STATION
WHERE NOT REGEXP_LIKE(CITY, '^[aeoui].*$','i');