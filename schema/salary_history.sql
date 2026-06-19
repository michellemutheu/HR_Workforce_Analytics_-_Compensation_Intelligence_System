CREATE TABLE salary_history (
salary_id INT PRIMARY KEY,
employee_id INT,
salary_amount DECIMAL(10, 2),
effective_date DATE,
end_date DATE,
FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);