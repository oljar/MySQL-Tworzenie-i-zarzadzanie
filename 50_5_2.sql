SELECT CURDATE();
SELECT CURTIME();

SELECT NOW();

SELECT DAY(NOW());

SELECT DAY('2022-08-28');

SELECT DAYNAME(NOW());

SELECT dayofweek(NOW());

SELECT dayofyear(NOW());

SELECT MONTH(NOW());

SELECT monthname(NOW());

SELECT HOUR(NOW());
SELECT HOUR(NOW());
-- CREATE TABLE KOMENTARZE2
-- (	
-- 	tresc VARCHAR(250),
--     data_wpisu TIMESTAMP DEFAULT NOW() -- ON UPDATE CURRENT_TIMESTAMP  -- WAZNE  dzięki niemu TIMESTAMP modyfikuje się jak jest Update
-- );

SHOW TABLES;
INSERT INTO komentarze2(tresc) VALUES (' komnetarz2');

UPDATE komentarze2
SET tresc = 'Ala ma kota'
WHERE tresc = 'komentarz2';

SELECT * FROM komentarze2;
-- DROP TABLE komentarze2; 