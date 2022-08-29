SHOW DATABASES;
USE sakila;
SHOW tables;

SELECT * FROM film;

DESC film;

SELECT title, release_year, rating FROM film LIMIT 10;
SELECT title, release_year, rating FROM film LIMIT 150,20;      -- wyświetli 20 od numeru 151

SELECT title, rating FROM film WHERE rating = "G";
SELECT title, length FROM film WHERE length >120;
SELECT title, length FROM film WHERE length !=130;
DESC film;
SELECT title, rating FROM film LIMIT 50;               
SELECT title, length, replacement_cost FROM film LIMIT 980,20;

SELECT title, length, replacement_cost FROM film  WHERE rating = "PG-13" LIMIT 20;

