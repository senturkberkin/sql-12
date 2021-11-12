SELECT first_name, last_name, foo.customer_id FROM (SELECT customer_id from payment GROUP BY customer_id ORDER BY COUNT(customer_id) desc LIMIT 5) as foo
INNER JOIN customer ON
customer.customer_id = foo.customer_id