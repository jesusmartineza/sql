/* JOINS (INNER JOIN) union de tablas */

/*Consulta informacion de 2 tablas*/
SELECT * FROM actor, film_text;
SELECT * FROM actor, film_actor;

SELECT city_id, city, country FROM city INNER JOIN country ON city.country_id = country.country_id;

/* film_id, first_name, last_name, titulo; */
/*Les conparto mi consulta RAUL
USE sakila;
SELECT film.film_id, first_name, last_name, title FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor ON film_actor.actor_id = actor.actor_id WHERE actor.actor_id = 160;
*/

/*Carlos instructor
SELECT film_id, first_name, last_name, title FROM film 
INNER JOIN actor ON actor_id = 5
WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 5);
*/

SELECT film_id, title FROM film;
SELECT actor_id, first_name, last_name FROM actor;
SELECT film_id FROM film_actor;

SELECT film.film_id, first_name, last_name, title FROM film INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor ON film_actor.actor_id = actor.actor_id ORDER BY actor.first_name ASC;
