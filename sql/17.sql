/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT country.country, sum(payment.amount) as profit
FROM payment
JOIN rental ON payment.rental_id = rental.rental_id
JOIN customer ON customer.customer_id = rental.customer_id
JOIN address ON address.address_id = customer.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON country.country_id = city.country_id
GROUP BY country.country
ORDER BY country.country ASC;
