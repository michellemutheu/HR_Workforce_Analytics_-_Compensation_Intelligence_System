WITH salary_bounds AS (
    SELECT
        employee_id,
        MIN(effective_date) AS first_date,
        MAX(effective_date) AS last_date
    FROM salary_history
    GROUP BY employee_id
),
salary_values AS (
SELECT `		`
    sb.employee_id,
    fs.salary_amount AS first_salary,
    ls.salary_amount AS latest_salary
FROM salary_bounds sb
JOIN salary_history fs
    ON sb.employee_id = fs.employee_id
   AND sb.first_date = fs.effective_date
JOIN salary_history sh
    ON sb.employee_id = ls.employee_id
   AND sb.last_date = ls.effective_date
),
performance AS (
SELECT
employee_id, 
AVG(rating) AS avg_rating
FROM performance_reviews
GROUP BY employee_id
)
SELECT
s.employee_id,
p.avg_rating,
s.first_salary,
s.latest_salary,
ROUND((s.latest_salary - s.first_salary) * 100.0 / s.first_salary, 2) AS salary_growth_pct
FROM salary_values s
JOIN performance p
ON s.employee_id = p.employee_id
ORDER BY salary_growth_pct DESC;