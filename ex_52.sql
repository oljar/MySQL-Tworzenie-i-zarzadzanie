SELECT ratings_no, title, (star_1+star_2+star_3+star_4+star_5) FROM ksiazki  GROUP BY title;
SELECT title FROM ksiazki WHERE ratings_no != star_1 + star_2 + star_3 + star_4 + star_5;
UPDATE ksiazki SET ratings_no = (star_1+star_2+star_3+star_4+star_5) WHERE ratings_no != star_1 + star_2 + star_3 + star_4 + star_5;
SELECT  title FROM ksiazki WHERE ratings_no != star_1 + star_2 + star_3 + star_4 + star_5;
SELECT * FROM ksiazki Where substring_index(author , ' ', -1) in ("Rowling");
SELECT DISTINCT AUTHOR FROM KSIAZKI;

SELECT avg(rating), author,publication_year From ksiazki where substring_index(author," ",1)  in ("John","Dan","George","William") AND publication_year%2 = 0 Group BY (author);