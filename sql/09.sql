/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT staff.first_name, staff.last_name, SUM(payment.amount) AS total_amount
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
WHERE payment.payment_date >= '2020-01-01' AND payment.payment_date < '2020-02-01'
GROUP BY staff.staff_id, staff.first_name, staff.last_name
ORDER BY total_amount;
