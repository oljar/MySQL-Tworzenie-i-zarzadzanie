SHOW DATABASES;
USE sakila;
SHOW TABLES;
DESC customer;

SELECT 
	first_name AS 'imię',
    last_name  AS 'nazwisko urzytkownika',
    email AS ' Adres Email',
    create_date AS 'Data rejestracji'
FROM customer
LIMIT 20;

