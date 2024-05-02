--- Employee
CREATE TABLE employee (
	emp_no INTEGER NOT NULL,
	emp_title_id varchar(5) NOT NULL,
	UNIQUE (emp_no),
	birth_date date NOT NULL,
	first_name  varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	sex varchar(1) NOT NULL,
	hire_date date NOT NULL,
	
	PRIMARY KEY (emp_title_id)
);

DROP TABLE IF EXISTS employee;

---departments

CREATE TABLE departments (
	dept_no varchar(5) NOT NULL,
	dept_name varchar(30)NOT NULL,
	PRIMARY KEY (dept_no)
);

DROP TABLE IF EXISTS departments;

--- dept_manager
CREATE TABLE dept_manager(
	dept_no varchar(4) NOT NULL,
	emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	PRIMARY KEY (dept_no, emp_no)	
);

DROP TABLE IF EXISTS dept_manager;

--- dept_emp
CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	dept_no varchar(5) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES deparments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

DROP TABLE IF EXISTS dept_emp;


----title
CREATE TABLE title(
	title_id varchar(5) NOT NULL,
	title varchar(15)NOT NULL,
	FOREIGN KEY (title_id) REFERENCES employee(emp_title_id),
	PRIMARY KEY (title_id)
);

DROP TABLE IF EXISTS title;

----salaries
CREATE TABLE salaries(
	emp_no int NOT NULL,
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

DROP TABLE IF EXISTS salaries;