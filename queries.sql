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
SELECT dm.emp_no, dp.dept_no, dp.dept_name, i.full_name, i.last_name
FROM 


---list dept number for each emplyee with their full name, employee number and department name 

---list full name and sex of each employee whose name starts with herculues and last name begins with B
SELECT first_name, last_name, sex
FROM employee
where first_name = 'Hercules' and last_name like 'B%';

--- list each employee in sales department and their employee full name and number
SELECT employee.first_name, employee.last_name, employee.emp_no, dept_emp.dept_no
FROM employee
JOIN dept_emp
	ON dept_emp.emp_no = employee.emp_no
WHERE dept_name= 'Sales' and dept_no= 'd007'

---list each employee in sales and development department including their full name, employee number and department name 
SELECT employee.emp_no, employee.first_name, employee.last_name, departments.dept_name
FROM employee
JOIN dept_emp
	ON dept_emp.emp_no = employee.emp_no
WHERE dept_no = 'd007' and 'd005'

---list the frequency counts in descending order of all employee last name 
