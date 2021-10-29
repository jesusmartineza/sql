/*  Count sirve para contar ciertos datos de una columna*/

/* AS nos sirve para renombrar temporalmente el nombre de la columna */

SELECT rental_duration, COUNT(film_id) AS 'Total' FROM film WHERE rental_duration = 7;

/* GROUP nos permite agrupar elementos */

SELECT rental_duration, COUNT(film_id) AS 'Total' FROM film GROUP BY rental_duration;

/* GROUP por rental_id de mayor a menor */

SELECT rental_duration, COUNT(film_id) AS 'Total' FROM film GROUP BY rental_duration ORDER BY rental_duration ASC;

/* GROUP ordenado por total de mayor a menor */

SELECT rental_duration, COUNT(film_id) AS 'Total' FROM film GROUP BY rental_duration ORDER BY Total DESC;

/* Promedio */

SELECT AVG(replacement_cost) AS 'Costo promedio' FROM film;

/* Suma */

SELECT SUM(replacement_cost) AS 'Costo total de inventario' FROM film;

/* Maximo */
/*Forma 1*/
SELECT title, MAX(replacement_cost) AS 'Max_replacement' FROM film;
/*Forma 2*/
SELECT title AS 'Titulo', replacement_cost AS 'Costo maximo' FROM film ORDER BY replacement_cost DESC LIMIT 1;






