SELECT first_name, last_name, hire_date
FROM "mod.9.new".employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        emp.sex,
        sal.salaries
FROM "mod.9.new".employees as emp
    LEFT JOIN "mod.9.new".salaries as sal
    ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

SELECT first_name, last_name, hire_date
FROM "mod.9.new".employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM "mod.9.new".dept_manager dm
JOIN "mod.9.new".employees e ON dm.emp_no = e.emp_no
JOIN "mod.9.new".departments d ON dm.dept_no = d.dept_no;

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM "mod.9.new".dept_emp de
JOIN "mod.9.new".employees e ON de.emp_no = e.emp_no
JOIN "mod.9.new".departments d ON de.dept_no = d.dept_no
WHERE e.hire_date = '9999-01-01';  -- Assuming current department is indicated by '9999-01-01'

SELECT first_name, last_name, sex
FROM "mod.9.new".employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name
FROM "mod.9.new".employees e
JOIN "mod.9.new".dept_emp de ON e.emp_no = de.emp_no
JOIN "mod.9.new".departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' AND e.hire_date = '9999-01-01';  -- Assuming current department is indicated by '9999-01-01'

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "mod.9.new".employees e
JOIN "mod.9.new".dept_emp de ON e.emp_no = de.emp_no
JOIN "mod.9.new".departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development') AND e.hire_date = '9999-01-01';  -- Assuming current department is indicated by '9999-01-01'

SELECT last_name, COUNT(*) as frequency
FROM "mod.9.new".employees
GROUP BY last_name
ORDER BY frequency DESC;
