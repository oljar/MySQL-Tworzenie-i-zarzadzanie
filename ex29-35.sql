USE ksiegarnia;
SELECT * FROM ksiazki WHERE publication_year BETWEEN 2005 and 2010;

SELECT AVG (rating ), publication_year FROM ksiazki WHERE publication_year BETWEEN 1990 AND 2005  GROUP BY publication_year ORDER BY publication_year ;
select * from ksiazki;
select SUM(rewiews_no) ,publication_year,title,author  FROM ksiazki WHERE rewiews_no > 60000  GROUP BY publication_year, author ORDER BY author DESC;

select author, title, publication_year FROM ksiazki WHERE  publication_year %2=0;

SELECT title , publication_year FROM ksiazki WHERE publication_year BETWEEN 2005 AND 2010 ;

SELECT SUM(star_1) , author FROM ksiazki WHERE REWIEWS_NO > 50000 OR ratings_no >100000 GROUP BY author ; 

SELECT sum(star_5 )* 100 /sum(ratings_no) FROM ksiazki WHERE  rating >=4 