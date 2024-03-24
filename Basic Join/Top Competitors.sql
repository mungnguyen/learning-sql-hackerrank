/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
*/
SELECT
    hk_id,
    name
FROM (
    SELECT
        h.hacker_id AS hk_id,
        h.name AS name,
        s.score AS score
    FROM Submissions AS s
    INNER JOIN Hackers AS h ON s.hacker_id = h.hacker_id
    INNER JOIN Challenges AS c ON s.challenge_id = c.challenge_id
    INNER JOIN Difficulty AS d on c.difficulty_level = d.difficulty_level
    WHERE s.score = d.score
) AS full_score
GROUP BY hk_id, name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, hk_id;