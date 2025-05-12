-- Query 1: Calculate the total sales volume for March 2024
SELECT SUM(amount) AS total_march_sales
FROM orders
WHERE order_date BETWEEN '2024-03-01' AND '2024-03-31';

-- Query 2: Find the customer who spent the most overall
SELECT customer, SUM(amount) AS total_spent
FROM orders
GROUP BY customer
ORDER BY total_spent DESC
LIMIT 1;

-- Query 3: Calculate the average order value for all orders
SELECT AVG(amount) AS average_order_value
FROM orders; 