SELECT 
d.department_name,
COUNT(e.employee_id) AS employees_in_departments
FROM employees e
JOIN departments d
ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY COUNT(d.department_id) DESC;