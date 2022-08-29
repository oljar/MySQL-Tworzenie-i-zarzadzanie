    USE  ksiegarnia;
	SELECT CONCAT(author,' - ', title) FROM ksiazki LIMIT 5; -- Kontkatenacja
	SELECT CONCAT_WS('  ***  ',author, title,publication_year) FROM ksiazki LIMIT 5;  --  Kontkatenacja z wspólnym separatorem
    

