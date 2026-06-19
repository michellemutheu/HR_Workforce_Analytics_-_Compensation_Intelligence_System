CREATE VIEW employee_performance AS
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    AVG(pr.rating) AS avg_rating
FROM employees e
JOIN performance_reviews pr
ON e.employee_id = pr.employee_id
GROUP BY
    e.employee_id,
    e.first_name,
    e.last_name;