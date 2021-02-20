DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no CHAR(4) NOT NULL,
  dept_name VARCHAR NOT NULL,
 PRIMARY KEY (dept_no)
);

CREATE TABLE employees (
  emp_no INTEGER NOT NULL,
  emp_title_id CHAR(5) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  Sex  CHAR(1) NOT NULL,
  hire_date DATE NOT NULL,
  PRIMARY KEY (emp_no)
);


CREATE TABLE dept_manager (
  dept_no CHAR(4) NOT NULL,
  emp_no INTEGER NOT NULL
);


CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no CHAR(4) NOT NULL  
);


CREATE TABLE salaries (
 emp_no INTEGER NOT NULL,
 salary INTEGER NOT NULL,
 FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);


CREATE TABLE titles (
 title_id CHAR(5) NOT NULL,
 title VARCHAR NOT NULL,
 PRIMARY KEY (title_id)
);