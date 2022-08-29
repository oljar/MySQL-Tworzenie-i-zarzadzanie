SELECT REPLACE
	(title,"e",3) 
FROM ksiazki LIMIT 15;

SELECT REVERSE ('abcdefg');
SELECT REVERSE (author) FROM ksiazki;

SELECT char_length('aaaa');

SELECT title, char_length(title) AS 'dlugosc tytulu'  FROM ksiazki;

SELECT upper('aaaaaaaa');
SELECT lower ('AAAAAAAAAA');

SELECT
	substring_index(author,' ',1) AS first_name,
	substring_index(author,' ',-1) AS last_name
FROM ksiazki;


SELECT DISTINCT publication_year FROM ksiazki; -- działa jak SET - nie powtarza 

SELECT DISTINCT(substring_index(author,' ',1) )AS first_name, char_length(title) AS dlugosc FROM ksiazki; 

SELECT 
	author AS autor,
    title AS title,
	publication_year AS rok_wydania,
    rating AS ocena
    FROM ksiazki
ORDER BY 4 DESC ;
