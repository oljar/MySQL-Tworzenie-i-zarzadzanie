show databases;
use najszybsze_zwierzeta;
show tables;
--- create table najwolniejsze_zwierzeta(Zwierze char(20), Gatunek char(20), Predkosc decimal(7,6));
show tables;
insert into najwolniejsze_zwierzeta ( Zwierze, Gatunek , Predkosc) values ("Slonka Amerykańska" , "ptak", 8.0),("Żółw wielki", "gad", 1.6),("Konik Morrski", "ryba", 0.0161);
insert into najwolniejsze_zwierzeta ( Zwierze,Predkosc) values ("konik morski", 0.0016);
insert into najwolniejsze_zwierzeta (Zwierze, Gatunek) values ("Rafa Koralowa", "Koralowce");
show databases;  			 																			-- wyświetla dostępne bazy
show tables ;																							-- wyświetla tabele w bazie			
desc najszybszych10;																					--  wyświetla pola
desc najwolniejsze_zwierzeta;																			-- wyświetla pola
select * from najszybszych10;																			-- wyświetla rekordy
select * from najwolniejsze_zwierzeta;																	-- wyświetla rekordy
select zwierze from najwolniejsze_zwierzeta;															-- wyświetla kolumny