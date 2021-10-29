/* Subconsultas */
/* Filtrar peliculas que sean de una categoria */
/* IN se usa para mandar multiples valores o pedir multiples consultas especificas */
/* CONSULTA PRINCIPAL (SELECT * FROM film WHERE film_id IN) CONSULTA SECUNDARIA (SELECT film_id FROM film_category WHERE category_id = 5) */
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 5);

SELECT * FROM film WHERE film_id = 1 OR film_id = 2 OR film_id = 3;
SELECT * FROM film WHERE film_id IN (100,7,33);
SELECT film_id FROM film_category WHERE category_id = 5;

/* Filtrar peliculas por actores */

SELECT actor_id, first_name FROM actor WHERE actor_id;
SELECT film_id, title FROM film WHERE film_id IN(SELECT film_id FROM film_actor WHERE actor_id = 40);

/*BETWEEN*/

SELECT * FROM film WHERE film_id BETWEEN 1 AND 10; 
