SHOW DATABASES;
-- 1. Use sakila DB
USE sakila;
-- 2. Get all the data from tables actor, film and customer.
SHOW TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3. Get film titles.
SELECT title FROM film;
-- 4. Get unique list of film languages under the alias language. 
-- Note that we are not asking you to obtain the language per each film.
SELECT name AS language
FROM language;
SELECT distinct name AS language
FROM language;
-- 5.1 Find out how many stores does the company have?
-- 5.2 Find out how many employees staff does the company have?
-- 5.3 Return a list of employee first names only?
SELECT COUNT(*) store;
SELECT COUNT(*) staff;
SELECT first_name 
FROM staff;