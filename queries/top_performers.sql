SELECT
e.first_name,
e.last_name,
AVG(pr.rating) AS avg_rating
FROM employees e
JOIN performance_reviews pr
ON pr.employee_id = e.employee_id
GROUP BY e.employee_id
ORDER BY avg_rating DESC
LIMIT 5;
