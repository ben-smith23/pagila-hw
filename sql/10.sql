/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT film.film_id, film.title, count(*) film_actor.actor_id
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
GROUP BY film_id;

