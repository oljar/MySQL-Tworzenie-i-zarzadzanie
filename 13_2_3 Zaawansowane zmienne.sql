use najszybsze_zwierzeta;
drop table najszybszych10; 																				   -- usuwa tabele 
create	table	najszybszych10( zwierze char(20) , max_predkosc int , stan char(10));                      -- tworzy tabele

desc najszybszych10; 
show columns from najszybszych10;
insert into najszybszych10( zwierze,  max_predkosc, stan) values ('Sokol Wedrowny', 390 , 'nurkowanie');   -- dodaje wartości do tabeli
insert into najszybszych10( zwierze, max_predkosc, stan) values ('Orzel Zloty', 320, 'nurkowanie');
insert into najszybszych10(zwierze, max_predkosc, stan ) values ('Bialo-nur', 170, 'lot');

select* from najszybszych10;																			-- wyświetla wszystko z tabeli10
select zwierze	from najszybszych10;																	-- wyświetli wartości kolumny zwierze z tabeli najszybszych10
insert into najszybszych10 (zwierze, max_predkosc) values ("Kobuz",160);
insert into najszybszych10(stan,zwierze,max_predkosc) values ("sprint", "Gepard", 120);
select* from najszybszych10;
show tables;																							-- wyświetla dostępne tabele w bazie 
desc najszybszych10;								                            						-- wyświetla zawartość tabeli ( wyświetli kolumny)
show columns from najszybszych10;																		-- wyświetla zawartość tabeli ( wyświetli kolumny jak powyżej)
select database();									    												-- wyświetla aktualną bazy danych
show databases;																							-- wyświetla wszytstkie bazy danych

DROP TABLE unikaty_najszybsze;
CREATE TABLE unikaty_najszybsze
(
	zwierze_id INT NOT NULL,
    zwierze CHAR(20) DEFAULT 'nienazwany',
    max_predkosc INT NOT NULL,
    stan CHAR(10) DEFAULT 'nie podano',
	PRIMARY KEY (zwierze_id)
);

SELECT * FROM unikaty_najszybsze;


DESC unikaty_najszybsze;
INSERT INTO unikaty_najszybsze (zwierze_id, zwierze, max_predkosc) VALUES (1,"Kobuz",160);
SELECT * FROM unikaty_najszybsze;
INSERT INTO unikaty_najszybsze (zwierze_id, zwierze, max_predkosc) VALUES (2,"Kobuz",160);

DROP TABLE unikaty_najszybsze;

CREATE TABLE unikaty_najszybsze
(
	zwierze_id INT AUTO_INCREMENT  PRIMARY KEY,
    zwierze CHAR(20) DEFAULT 'nienazwany',
    max_predkosc INT NOT NULL,
    stan CHAR(10) DEFAULT 'nie podano'
);
INSERT INTO unikaty_najszybsze( zwierze, max_predkosc ) VALUES ("Orzel zloty", 320);     -- jeśli jest  definiowana wartość to trzeba ja podać . 
INSERT INTO unikaty_najszybsze( zwierze, max_predkosc ) VALUES ("Sokol wędrowny", 390);

 SELECT * FROM  unikaty_najszybsze; 
 
 INSERT INTO unikaty_najszybsze (zwierze_id, zwierze, max_predkosc ) VALUES (173, "Kobuz", 160) ;
 INSERT INTO unikaty_najszybsze (zwierze, max_predkosc ) VALUES ("Gepard", 120) ;
 SELECT * FROM  unikaty_najszybsze; 