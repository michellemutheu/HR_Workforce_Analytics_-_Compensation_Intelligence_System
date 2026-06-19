CREATE VIEW employee_salary_history AS
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    sh.salary_amount,
    sh.effective_date
FROM employees e
JOIN salary_history sh
ON e.employee_id = sh.employee_id;