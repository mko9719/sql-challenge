--QUERY ONE--
SELECT e.emp_num, e.last_name, e.first_name, e.sex, s.salary 
FROM Employees e JOIN Salaries s ON e.emp_num = s.emp_num;

-- QUERY TWO --
SELECT e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE hire_date BETWEEN '1986-1-1' AND '1986-12-31';

-- QUERY THREE --
SELECT dept_manager.dept_num, departments.dept_name, dept_manager.emp_num, employees.first_name, employees.last_name, employees.emp_num FROM dept_manager
INNER JOIN employees ON employees.emp_num = dept_manager.emp_num
INNER JOIN departments ON departments.dept_num = dept_manager.dept_num;

-- QUERY FOUR -- 
SELECT dept_emp.dept_num, dept_emp.emp_num, employees.last_name, employees.first_name, departments.dept_name 
FROM dept_emp INNER JOIN employees ON employees.emp_num=dept_emp.emp_num 
INNER JOIN departments ON departments.dept_num=dept_emp.dept_num

-- QUERY FIVE --
SELECT first_name, last_name, sex FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- QUERY SIX --
SELECT dept_emp.emp_num, employees.last_name, employees.first_name, departments.dept_name 
FROM dept_emp JOIN employees ON employees.emp_num = dept_emp.emp_num 
JOIN departments ON departments.dept_num = dept_emp.dept_num WHERE dept_name = 'Sales';

-- QUERY SEVEN -- 
SELECT dept_emp.emp_num, employees.last_name, employees.first_name, departments.dept_name 
FROM dept_emp JOIN employees ON employees.emp_num = dept_emp.emp_num 
JOIN departments ON departments.dept_num = dept_emp.dept_num 
WHERE dept_name = 'Sales' AND dept_name='Development';

-- QUERY EIGHT -- 
SELECT last_name, COUNT(last_name) FROM employees GROUP BY last_name ORDER BY COUNT(last_name) DESC;