SELECT ratings_no, title, (star_1+star_2+star_3+star_4+star_5) FROM ksiazki  GROUP BY title;
SELECT title FROM ksiazki WHERE ratings_no != star_1 + star_2 + star_3 + star_4 + star_5;
UPDATE ksiazki SET ratings_no = (star_1+star_2+star_3+star_4+star_5) WHERE ratings_no != star_1 + star_2 + star_3 + star_4 + star_5;
SELECT title FROM ksiazki WHERE ratings_no != star_1 + star_2 + star_3 + star_4 + star_5;