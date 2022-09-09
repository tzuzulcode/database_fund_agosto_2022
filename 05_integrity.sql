USE test;

SELECT * FROM salaries;
SELECT char_length(playerID) as len FROM salaries ORDER BY len DESC;


SELECT * FROM people LEFT JOIN salaries ON people.playerID=salaries.playerID;

SELECT * FROM people;
SELECT * FROM salaries;
SELECT * FROM people WHERE playerID="parkeda01";
SELECT * FROM salaries WHERE playerID="aardsda01";
SELECT * FROM salaries WHERE playerID="aaronha01";
SELECT * FROM salaries WHERE playerID="barkele01";
SELECT * FROM salaries WHERE playerID="parkeda01";
SELECT * FROM salaries WHERE playerID IS NULL;

DELETE FROM people WHERE playerID="aardsda01";
DELETE FROM people WHERE playerID="aaronha01";
DELETE FROM people WHERE playerID="barkele01";
DELETE FROM salaries WHERE playerID IS NULL;

SELECT * FROM people WHERE deathYear<birthYear;

UPDATE people
SET deathYear=NULL
WHERE deathYear=0;

ALTER TABLE people
ADD CONSTRAINT `deathYear_birthYear` 
CHECK(birthYear<deathYear);

INSERT INTO people(playerID,birthYear) VALUES('codetzu01',1998);
SELECT * FROM people WHERE playerID = 'codetzu01';
