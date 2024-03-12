/*
Enter your query here.P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
*/
SET @num := 21;
SELECT REPEAT('* ', @num := @num-1)  As Pattern
FROM information_schema.tables
LIMIT 20;


