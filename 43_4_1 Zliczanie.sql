USE ksiegarnia;
SELECT  COUNT(author) FROM ksiazki;
SELECT  COUNT(Distinct author) FROM ksiazki;
SELECT * FROM ksiazki WHERE title LIKE '%the%';

SELECT 
	COUNT(DISTINCT SUBSTRING_INDEX(author,' ',-1))
FROM ksiazki
WHERE CHAR_LENGTH(SUBSTRING_INDEX(author,' ',-1))= 6
-- Zlicza ilość wystąpień nazwiska autora o 6-ciu znakach - bez powtórzeń. 