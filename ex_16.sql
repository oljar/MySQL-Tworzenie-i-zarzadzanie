USE ksiegarnia;
SELECT CONCAT 
(
		SUBSTRING( author , 1,5),
        "...",
        SUBSTRING( title , 1,7),
        "..."
)
FROM ksiazki;


