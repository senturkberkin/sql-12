SELECT customer.first_name, customer.last_name, COUNT(payment.customer_id) as totalpurchase, customer.customer_id FROM payment
JOIN customer on customer.customer_id = payment.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name, customer.customer_id
ORDER BY COUNT(payment.customer_id) desc;