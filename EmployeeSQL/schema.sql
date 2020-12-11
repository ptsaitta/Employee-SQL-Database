CREATE TABLE Departments (
dept_name varchar(100),
dept_no varchar(6),
PRIMARY KEY (dept_no)
);

CREATE TABLE Department_Employees (
dept_no varchar(6) FK >- Departments.dept_no,
emp_no int FK >- Employees.emp_no,
PRIMARY KEY (dept_no, emp_no)
CONSTRAINT fk_dept_no
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
CONSTRAINT fk_emp_no
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Department_Manager (
dept_no varchar(6) FK >- Departments.dept_no,
emp_no int,
PRIMARY KEY (dept_no, emp_no),
CONSTRAINT fk_dept_no
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Employees (
emp_no int,
emp_title_id varchar(5),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(1),
hire_date date,
PRIMARY KEY (emp_no)
);

CREATE TABLE Salaries (
emp_no int FK >- Employees.emp_no,
salary int,
PRIMARY KEY (emp_no),
CONSTRAINT fk_emp_no
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles (
title_id varchar(5) FK >- Employees.emp_title_id,
title string,
PRIMARY KEY (title_id),
CONSTRAINT fk_title_id
	FOREIGN KEY (title_id) REFERENCES Employees(emp_title_id)
);