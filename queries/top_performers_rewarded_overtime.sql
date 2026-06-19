WITH latest_salary_dates AS (
SELECT 
employee_id,
MAX(effective_date) AS latest_date
FROM salary_history
GROUP BY employee_id
),
top_performers AS (
SELECT
e.employee_id, 
AVG(pr.rating) AS avg_rating
FROM employees e
JOIN performance_reviews pr
ON pr.employee_id = e.employee_id
GROUP BY e.employee_id
)
SELECT lsd.employee_id, tp.avg_rating, lsd.latest_date
FROM latest_salary_dates lsd
INNER JOIN top_performers tp
ON tp.employee_id = lsd.employee_id;