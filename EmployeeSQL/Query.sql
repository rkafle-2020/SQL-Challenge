--question 1. List employee number, last name, first name, sex, and salary.

select employees.emp_no,employees.last_name,employees.first_name, employees.sex,salaries.salary
from employees 
left join salaries on employees.emp_no= salaries.emp_no

--question 2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name,last_name,hire_date from employees
WHERE hire_date between '1986-01-01' and '1986-12-31'

--question 3. List manager with department number, department name, the manager's employee number, last name, first name.

select dm.dept_no, d.dept_name, e.last_name,e.first_name
from dept_manager as dm
inner join departments as d 
on dm.dept_no = d.dept_no
inner join employees as e
on dm.emp_no = e.emp_no

--question 4. List employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
order by e.emp_no;

--question 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select last_name ,first_name,sex
from employees 
where 
    first_name='Hercules' and
    last_name like 'B%'

--question 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select employees.emp_no ,employees.last_name ,employees.first_name,departments.dept_name
from departments
JOIN dept_emp on departments.dept_no=dept_emp.dept_no
JOIN employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name= 'Sales'

--question 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select employees.emp_no ,employees.last_name,employees.first_name,departments.dept_name
from departments
JOIN dept_emp on departments.dept_no=dept_emp.dept_no
JOIN employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name in ('Sales','Development')

--question 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,count(*)
FROM employees
GROUP BY  last_name 
ORDER BY COUNT(*) DESC
