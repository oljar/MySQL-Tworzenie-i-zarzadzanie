

SELECT 
	title,
    rating,
CASE
	WHEN rating > 4 THEN ' dobra ksiazka '
    ELSE 'przecietna ksiazka'
END AS ocena,
author
FROM KSIAZKI;


SElECT
	title,
    rating,
CASE
	WHEN rating > 4.2 THEN ' bardzo dobra ksiazka'
    WHEN rating > 3.8 THEN 'dobra ksiazka' 
    ELSE ' przecietna ksiazka '
    END AS rodzaj,
    author
    FROM ksiazki;
    
SELECT
	title,
    rating,
    IF (rating > 4.2, ' bardzo dobra ksiazka','dobra ksiazka') as ocena

FROM ksiazki;


SELECT
CASE
	WHEN rating > 4.5 THEN "*****"
    WHEN rating > 4.0 AND rating <= 4.5 THEN "****"
    WHEN rating > 3.5 AND rating <= 4.0 THEN "***"
    WHEN rating > 3.0 AND rating <= 4.5 THEN "**"
    WHEN rating <= 3.0 THEN "*"
END AS stars,
CASE
    WHEN publication_year > 1939 THEN "Literatura współczesna"
    WHEN publication_year >= 1935 THEN "Literatura przedwojenna"
    WHEN publication_year >= 1918 THEN "Literatura powojenna"
    WHEN publication_year >= 1880 THEN "P0ozytywizm"
    WHEN publication_year <  1880 THEN "Wczesniej"
    
END AS epoke,
if ( star_1 > star_5 or star_2 > star_5 or star_3 > star_5 or star_4 > star_5 ,' wiecej','mniej') AS porownanie
FROM ksiazki;

    
    
    
    
