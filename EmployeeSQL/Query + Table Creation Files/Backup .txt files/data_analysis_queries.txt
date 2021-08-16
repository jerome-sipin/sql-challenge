-- Analysis Question 1
SELECT e.emp_no, e.last_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;

-- Analysis Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'

-- Analysis Question 3
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
INNER JOIN departments AS d ON
dm.dept_no = d.dept_no
INNER JOIN employees AS e ON
e.emp_no = dm.emp_no

-- Analysis Question 4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emps AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no

-- Analysis Question 5
SELECT first_Name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- Analysis Question 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emps AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

-- Analysis Question 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emps AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

-- Analysis Question 8
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC