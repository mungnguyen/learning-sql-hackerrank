/*
- Using MySQL
- Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.
- Note: Print NULL when there are no more names corresponding to an occupation.
*/
SELECT
  MAX(CASE WHEN Occupation = 'Doctor' then Name else NULL END) AS Doctor,
  MAX(CASE WHEN Occupation = 'Professor' then Name else NULL END) AS Professor,
  MAX(CASE WHEN Occupation = 'Singer' then Name else NULL END) AS Singer,
  MAX(CASE WHEN Occupation = 'Actor' then Name else NULL END) AS Actor
FROM
  (
    SELECT 
      Name, 
      Occupation,
      DENSE_RANK() OVER (
        PARTITION BY Occupation 
        ORDER BY Name ASC
      ) order_name 
      FROM OCCUPATIONS 
  ) as t
GROUP BY
  order_name;