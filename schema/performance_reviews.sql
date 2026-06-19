CREATE TABLE performance_reviews (
performance_id INT PRIMARY KEY,
employee_id INT ,
rating INT,
review_date DATE,
review_period_start DATE,
review_period_end DATE,
review_comments VARCHAR(100),
reviewer_id INT,
FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
FOREIGN KEY (reviewer_id) REFERENCES employees(employee_id)
);