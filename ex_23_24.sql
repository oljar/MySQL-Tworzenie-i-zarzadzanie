USE ksiegarnia;
SELECT * FROM ksiazki WHERE publication_year = 2012;
SELECT count(substring_index(author, ' ' , 1)) FROM ksiazki WHERE substring_index(author, ' ' , 1) = 'John';
