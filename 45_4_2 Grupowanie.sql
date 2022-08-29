SELECT 
	author,
    count(*) AS 'ile ksiazek'
FROM ksiazki
GROUP BY author;