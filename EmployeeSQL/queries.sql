---List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
INNER JOIN Salaries on Employees.emp_no = Salaries.emp_no

---List first name, last name, and hire date for employees who were hired in 1986

SELECT Employees.last_name, Employees.first_name, Employees.hire_date
FROM Employees
WHERE hire_date BETWEEN '1/1/1986' and '1/1/1987'; ---1st date is inclusive; 2nd is exclusive. Only single quotes work; double ones don't
												   
