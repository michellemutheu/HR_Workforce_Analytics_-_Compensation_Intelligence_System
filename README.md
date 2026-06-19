# 📊 HR Analytics SQL Project  
### Employee Performance & Compensation Analysis

![SQL](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge)
![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-336791?style=for-the-badge&logo=postgresql)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Junior%20Data%20Analyst-orange?style=for-the-badge)

---

## 📌 Project Overview

This project is a **real-world HR analytics case study** built using SQL.  

It focuses on analyzing employee data to generate insights around:

- Employee distribution across departments  
- Salary structure and compensation fairness  
- Performance evaluation trends  
- Relationship between salary and performance  

The goal is to demonstrate how SQL is used in **business decision-making and HR analytics**.

---

## 🎯 Business Objectives

This project answers key HR questions:

- How are employees distributed across departments?
- Which departments have the highest average salaries?
- Who are the top-performing employees?
- Are high performers being compensated fairly?
- Is salary aligned with performance?
- What insights can support HR promotion and reward decisions?

---

## 🗂️ Dataset Description

### 1. employees
- employee_id (PK)
- first_name
- last_name
- salary
- department_id

### 2. departments
- department_id (PK)
- department_name

### 3. performance_reviews
- review_id (PK)
- employee_id (FK)
- rating
- review_date

### 4. salary_history
- salary_id (PK)
- employee_id (FK)
- salary_amount
- effective_date

---

## 🧠 SQL Concepts Used

- INNER JOIN  
- GROUP BY & Aggregations (AVG, COUNT)  
- Subqueries  
- Common Table Expressions (CTEs)  
- Views  
- Filtering & Sorting (WHERE, ORDER BY, LIMIT)  

---

## 🏗️ Database Views

### 👤 Employee Details View
Combines employee and department information for reporting.

### 📊 Employee Performance View
Aggregates average performance ratings per employee.

### 💰 Employee Salary History View
Tracks salary changes over time.

---

## 📊 Key Business Insights

- Departments show variation in average salary levels  
- High performers are not always the highest paid  
- Performance ratings are concentrated in the 4–5 range  
- Salary distribution is uneven across departments  
- Compensation and performance are not perfectly aligned  

---

## 📈 Example Reports

- Employees per department  
- Average salary by department  
- Top 5 performing employees  
- High performers earning below average salary  
- Department performance comparison  

---

## 🧾 Sample Insight

> Several high-performing employees earn below the company’s average salary, indicating potential compensation misalignment that may require HR review.

---

## 🚀 Project Structure

---

## 🛠️ Tools & Technologies

- PostgreSQL  
- SQL  
- Data Modeling  
- Business Analytics  

---

## 📌 Key Takeaways

This project demonstrates the ability to:

- Analyze HR datasets using SQL  
- Build reusable views for reporting  
- Extract business insights from raw data  
- Evaluate performance vs compensation relationships  
- Support HR decision-making with data  

---

## 📈 Future Improvements

- Salary growth trend analysis  
- Employee retention analysis  
- Promotion prediction model  
- Dashboard (Power BI / Tableau)

---

## 👤 Author

Built as part of a data analytics learning journey focused on:
- HR Analytics  
- SQL Development  
- Business Intelligence  

---
