/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
Enter your query here.
* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).
*/
SET @num := 0;
SELECT REPEAT('* ', @num := @num+1)  As Pattern
FROM information_schema.tables
LIMIT 20;