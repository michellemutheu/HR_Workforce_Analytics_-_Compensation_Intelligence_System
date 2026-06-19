SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    AVG(pr.rating) AS avg_rating
FROM employees e
JOIN performance_reviews pr
ON pr.employee_id = e.employee_id
WHERE e.salary > (
SELECT AVG(salary)
FROM employees
)
GROUP BY
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary
HAVING AVG(pr.rating) >= 4.5
ORDER BY avg_rating DESC;

