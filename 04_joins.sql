USE test;

SELECT * FROM salaries;
SELECT char_length(playerID) as len FROM salaries ORDER BY len DESC;


SELECT * FROM people LEFT JOIN salaries ON people.playerID=salaries.playerID;