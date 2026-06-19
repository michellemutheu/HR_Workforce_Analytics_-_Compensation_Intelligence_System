CREATE TABLE employees (
employee_id INT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
date_of_birth DATE,
date_of_hire DATE,
job_title VARCHAR(100),
salary DECIMAL(10, 2),
department_id INT,
job_type VARCHAR(100),
location VARCHAR(100),
gender VARCHAR(100),
date_of_resignation DATE,
manager_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);