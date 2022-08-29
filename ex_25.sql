USE ksiegarnia;
SELECT  publication_year, COUNT(*)
FROM ksiazki
GROUP BY publication_year
ORDER BY publication_year desc;

SELECT MAX(rating) FROM ksiazki;
SELECT MIN(rating) FROM ksiazki;

SELECT author, title, rating FROM ksiazki ORDER BY rating LIMIT 1;

SELECT author , title, rating FROM ksiazki  WHERE rating =( SELECT MIN(rating) FROM ksiazki); 


SELECT SUM(ratings_no) FROM ksiazki;

SELECT author, SUM(ratings_no), COUNT(*) AS ILOŚĆ_KSIĄŻEK  FROM ksiazki GROUP BY author ;  -- zlicza ilość zgrupowanych książek

SELECT author, SUM(ratings_no)  FROM ksiazki GROUP BY author ORDER BY SUM(ratings_no) DESC;

SELECT AVG( ratings_no) FROM ksiazki;

SELECT 
	publication_year   ,
    ROUND(AVG(rating),1),
    COUNT(*)
   
FROM ksiazki
WHERE publication_year%2=0
GROUP BY publication_year
ORDER By publication_year DESC;

SELECT round(100.3344,1);

SELECT 30%2;

SELECT * FROM  ksiazki;
SELECT * FROM ksiazki WHERE publication_year = (SELECT MIN(publication_year)) GROUP BY author;

SELECT author, title, publication_year, SUM(ratings_no) FROM ksiazki;