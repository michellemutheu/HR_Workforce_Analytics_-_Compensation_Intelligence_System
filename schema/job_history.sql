CREATE TABLE job_history (
job_history_id INT PRIMARY KEY,
employee_id INT,
job_title VARCHAR(100),
effective_date DATE,
department_id INT,
start_date DATE,
end_date DATE,
FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);