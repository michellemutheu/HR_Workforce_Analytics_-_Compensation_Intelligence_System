SELECT
employee_id,
EXTRACT(YEAR FROM review_date) AS review_year,
AVG(rating) AS avg_rating
FROM performance_reviews
GROUP BY employee_id, review_year
ORDER BY employee_id ASC;