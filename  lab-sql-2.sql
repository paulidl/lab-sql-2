-- 1. Select all the actors with the first name ‘Scarlett’.

use sakila;
select * from sakila.actor where first_name = "Scarlett";
-- SCARLETT DAMON, SCARLETT BENING.

-- 2. Select all the actors with the last name ‘Johansson’.

select * from sakila.actor where last_name = "Johansson";
-- MATTHEW JOHANSSON, RAY JOHANSSON, ALBERT JOHANSSON.

-- 3. How many films (movies) are available for rent?

select count(*) from sakila.film;
-- They are 1.000 movies available for rent.

-- 4. How many films have been rented?

select count(*) from sakila.rental;
-- 16.044 times the films have been rented.

-- 5. What is the shortest and longest rental period?

select  min(timediff(return_date, rental_date)) as min_rental_period, max(timediff(return_date, rental_date)) as max_rental_period from sakila.rental; 
-- The shortest rental period is 18:00:00 and longest rental period is 221:59:00.

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.

select min(length) as min_duration, max(length) as max_duration from sakila.film; 
-- The shortest movie duration is 46 minutes and the longest movie duration is 185 minutes.

-- 7. What's the average movie duration?

select avg(length) as average_movie_duration from sakila.film;
-- The average movie duration is 115,2720 minutes.

-- 8. What's the average movie duration expressed in format (hours, minutes)?

select floor(avg(length)/60) as hours, floor(avg(length)-60) as minutes from sakila.film;
-- The average movie duration is 1 hour and 55 minutes.

-- 9. How many movies longer than 3 hours?

select count(*) as movies_longer_than_3_hours from sakila.film where length > 180;
-- 39 movies are longer than 3 hours.

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

select *, concat(upper(left(first_name,1)), lower(substring(first_name,2,length(first_name)))," ",upper(last_name), " - ",lower(email)) as email_formatted from sakila.customer;

-- 11. What's the length of the longest film title?

select max(length(title)) as longest_length from sakila.film;
-- The length of the longest film title is 27 characters.