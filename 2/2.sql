SELECT COUNT(rental_rate) FROM film
WHERE rental_rate =
(
	SELECT MAX(rentaL_rate) FROM film
);