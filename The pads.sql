/*
Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: 
There are a total of [occupation_count] [occupation]s.
*/
SELECT CONCAT(RTRIM(NAME),'(',LEFT(Occupation,1),')')
FROM Occupations
ORDER BY Name ASC;
SELECT CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(Occupation),'s.')
FROM Occupations
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation ASC;

