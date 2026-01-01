CREATE DATABASE employee_analysis;
USE employee_analysis;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(30),
    salary INT,
    joining_date DATE
);
SHOW TABLES;
DESCRIBE employees;
INSERT INTO employees VALUES
(1, 'Amit', 'IT', 60000, '2022-01-10'),
(2, 'Neha', 'HR', 45000, '2021-03-15'),
(3, 'Rahul', 'Finance', 50000, '2020-06-20'),
(4, 'Pooja', 'IT', 70000, '2023-02-01'),
(5, 'Ankit', 'Sales', 40000, '2022-08-18'),
(6, 'Sneha', 'Sales', 42000, '2021-11-05');
SELECT * FROM employees;
SELECT COUNT(*) AS total_employees
FROM employees;
SELECT emp_name,joining_date 
FROM employees
WHERE joining_date> '2021-01-01';
select emp_name, salary
from employees
order by salary asc
limit 1;
select emp_name, salary
from employees
order by salary desc
limit 1;
select dept ,avg(salary)
from employees
group by dept;
select avg(salary) as avg_salary
from employees;






