SHOW DATABASES;
USE sakila;
-- 1. Select all the actors with the first name ‘Scarlett’.
SELECT * FROM sakila.actor
WHERE first_name = 'SCARLETT';
-- 2. How many films (movies) are available for rent and how many films have been rented?
SELECT COUNT(*) FROM sakila.film;
SELECT COUNT(*) FROM sakila.rental;
-- 3. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(rental_duration) AS max_duration, MIN(rental_duration) AS min_duration
FROM sakila.film;
-- 4. What's the average movie duration expressed in format (hours, minutes)?
SELECT AVG(length) AS avg_duration
FROM sakila.film;
SELECT floor(avg(length) / 60) AS hours, round(avg(length) % 60) AS minutes
FROM sakila.film;
-- 5. How many distinct (different) actors' last names are there?
SELECT COUNT(distinct last_name)
FROM actor;
-- 6. Since how many days has the company been operating (check DATEDIFF() function)?
SELECT * FROM sakila.store;
SELECT DATEDIFF(NOW(), MIN(last_update)) AS days_operating
FROM store;
-- 7. Show rental info with additional columns month and weekday. Get 20 results.
SELECT* , date_format(rental_date, '%M') AS month , date_format(rental_date, '%W') AS weekday
FROM rental
LIMIT 20;
-- 8. Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT * FROM sakila.rental; 
SELECT *, CASE WHEN date_format(rental_date, '%W') IN ('Saturday', 'Sunday')
          THEN 'weekend'
          ELSE 'workday' END AS day_type
FROM rental;
-- 9. How many rentals were in the last month of activity?

SELECT COUNT(*) AS num_rentals_last_month
FROM rental
WHERE rental_date BETWEEN DATE_SUB(NOW(), INTERVAL 1 MONTH) AND NOW();
