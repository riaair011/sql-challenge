----QUERY
-- listing employee number, full name, sex and salary
SELECT i.emp_no, i.first_name, i.last_name, i.sex, s.salary
FROM employee as i 
JOIN Salaries as s
	ON i.emp_no = s.emp_no;


----List full name and hire date for employees hired in 1968
SELECT i.first_name, i.last_name, i.hire_date
FROM employee as i
WHERE hire_date between 1/1/1968 and 12/31/1968;


---list manager of eac department with department number, name, employee number, and thier full name
SELECT dept_manager.emp_no, departments.dept_no, departments.dept_name, employee.full_name, employee.last_name
FROM deparments
JOIN dept_manager 
	ON dept_manager.dept_no = departments.dept_no
JOIN employees
	ON departments.emp_no = employee.emo_no;


---list dept number for each emplyee with their full name, employee number and department name 
SELECT employee.first_name, employee.last_name, employee.emp_no, dept_emp.dept_name, 
FROM dept_emp
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
JOIN employee
	ON departments.emp_no = employee.emp_no;

---list full name and sex of each employee whose name starts with herculues and last name begins with B
SELECT first_name, last_name, sex
FROM employee
where first_name = 'Hercules' and last_name like 'B%';

--- list each employee in sales department and their employee full name and number
SELECT employee.first_name, employee.last_name, employee.emp_no, departments.dept_name
FROM dept_emp
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
JOIN employee
	ON dept_emp.emp_no = employee.emp_no
WHERE dept_name= 'Sales';

---list each employee in sales and development department including their full name, employee number and department name 
SELECT employee.emp_no, employee.first_name, employee.last_name, departments.dept_name
FROM dept_emp
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
JOIN employee
	ON dept_emp.emp_no = employee.emp_no
WHERE dept_name= 'Sales'and dept_name= 'Development';

---list the frequency counts in descending order of all employee last name 
SELECT i.emp_no, COUNT(last_name) as freq
FROM employee as e 
GROUP BY last_name
ORDER BY freq DESC;