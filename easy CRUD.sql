-- DROP DATABASE  IF  EXISTS sample;
-- CREATE DATABASE  IF NOT EXISTS sample;
-- USE  sample;
-- CREATE TABLE IF NOT EXISTS tablica (
-- 						id int NOT NULL PRIMARY KEY AUTO_INCREMENT ,
-- 						Name char(20) );
INSERT INTO tablica (name) VALUES ('ALA');
INSERT INTO tablica (name)VALUES ('OLA');
INSERT INTO tablica (name) VALUES ('ELA');
SELECT * FROM tablica;
UPDATE tablica SET Name = 'change' WHERE id =1;
SELECT * FROM tablica;
DELETE  FROM tablica WHERE id =4 ;
SELECT * FROM tablica;




                        