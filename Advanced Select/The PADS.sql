/*
Using MySQL
Generate the following two result sets:

- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

- There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.
*/
-- First query
SELECT
    CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS 'Name1'
FROM OCCUPATIONS
ORDER BY Name;

-- Second query
SELECT
    CONCAT('There are a total of ', occupation_count, ' ', LOWER(Occupation), 's.')
FROM (
    SELECT
        Occupation,
        COUNT(*) AS occupation_count
    FROM
        OCCUPATIONS
    GROUP BY Occupation
) AS occ_count
ORDER BY occupation_count, Occupation;