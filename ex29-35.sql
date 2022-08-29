USE ksiegarnia;
SELECT * FROM ksiazki WHERE publication_year BETWEEN 2005 and 2010;

SELECT AVG (rating ), publication_year FROM ksiazki WHERE publication_year BETWEEN 1990 AND 2005  GROUP BY publication_year ORDER BY publication_year ;
select * from ksiazki;
select star_1 ,author GROUP BY author ;