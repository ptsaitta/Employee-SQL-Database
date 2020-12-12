---List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
INNER JOIN Salaries on Employees.emp_no = Salaries.emp_no

---List first name, last name, and hire date for employees who were hired in 1986

SELECT Employees.last_name, Employees.first_name, Employees.hire_date
FROM Employees
WHERE hire_date BETWEEN '1/1/1986' and '1/1/1987'; ---1st date is inclusive; 2nd is exclusive. Only single quotes work; double ones don't
												   
---List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
---department_manager table has dept_nos (which can get dept_name) and emp_nos (which can get last_name, first_name)

SELECT Department_Manager.dept_no, Department_Manager.emp_no, Departments.dept_name, Employees.last_name, Employees.first_name
FROM Department_Manager
INNER JOIN Departments ON (Department_Manager.dept_no = Departments.dept_no)
INNER JOIN Employees ON (Department_Manager.emp_no = Employees.emp_no);

---List the department of each employee with the following information: employee number, last name, first name, and department name

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Department_Employees
INNER JOIN Employees ON Department_Employees.emp_no = Employees.emp_no
INNER JOIN Departments ON Department_Employees.dept_no = Departments.dept_no;

---List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT Employees.first_name, Employees.last_name, Employees.sex
FROM Employees
WHERE Employees.first_name = 'Hercules' AND Left(Employees.last_name, 1) = 'B';

---List all employees in the Sales department, including their employee number, last name, first name, and department name

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
INNER JOIN Department_Employees ON Employees.emp_no = Department_Employees.emp_no
INNER JOIN Departments ON Departments.dept_no = Department_Employees.dept_no
WHERE Departments.dept_name = 'Sales';

---List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
INNER JOIN Department_Employees ON Employees.emp_no = Department_Employees.emp_no
INNER JOIN Departments ON Departments.dept_no = Department_Employees.dept_no
WHERE Departments.dept_name = 'Sales' OR Departments.dept_name = 'Development';

---In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT Employees.last_name, COUNT(*)
FROM Employees
GROUP BY Employees.last_name
ORDER BY COUNT(Employees.last_name) DESC;

---Epilogue
SELECT Employees.emp_no, Employees.first_name, Employees.last_name
FROM Employees
WHERE emp_no = '499942'

---What a prankster of a boss I've got...
