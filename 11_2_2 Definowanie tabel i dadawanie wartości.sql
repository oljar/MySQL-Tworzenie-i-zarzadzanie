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
