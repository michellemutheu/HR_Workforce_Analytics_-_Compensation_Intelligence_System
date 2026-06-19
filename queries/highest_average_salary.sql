SELECT
d.department_name,
AVG(e.salary) AS avg_salary
FROM departments d
JOIN employees e
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY AVG(e.salary) DESC
LIMIT 1;