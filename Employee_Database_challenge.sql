--DELIVERABLE 1
-- 1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name 
from employees 
-- 2. Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT title, from_date, to_date
from titles 
-- 3. Create a new table using the INTO clause.
INTO retirement_titles
-- 4. Join both tables on the primary key.
SELECT e.emp_no, e.first_name, e.last_name,t.title, t.from_date, t.to_date
--5. INTO retirement_titles
FROM titles as t
JOIN employees as e 
ON t.emp_no = e.emp_no
-- 6. Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no
 --7 export file

--create retirement_titles QUERY

SELECT e.emp_no, e.first_name, e.last_name,t.title, t.from_date, t.to_date
INTO retirement_titles
FROM titles as t
JOIN employees as e 
ON t.emp_no = e.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no

--9/10.Retrieve the employee number, first and last name, and title columns from the Retirement Titles table,
--11. Exclude those employees that have already left the company,on to_date that are equal to '9999-01-01'.
--12. create new table with INTO
--13. sort in ASC by emp no and desc order by to_date

-----create unique_titles query
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;


--17. retrieve # titles from Unique Titles
--18. create new table, retiring_titles

----create retiring_titles query
SELECT COUNT(title), title
INTO retiring_titles
from unique_titles
group by title
order by COUNT(title)desc


-----DELIVERABLE 2

-- 1.emp_no, first_name, last_name, and birth_date columns from Employees.
SELECT emp_no, first_name, last_name 
from employees
		
-- 2. from_date and to_date columns from Department Employee
SELECT from_date, to_date
from dept_employee
-- 3. title column from Titles
SELECT title
from titles
-- 4. Use a DISTINCT ON statement, first occurrence of emp_no by the ON () clause.
SELECT DISTINCT ON (t.emp_no)
t.emp_no,
t.title
FROM titles as t
-- 5. Create a new table using the INTO clause.
INTO mentors 

-- 6. Join Employees and Department Employee
-- 7. Join employees and title
-- 8. Filter the data on to_date ,then filter on the birth_date with birth dates between January 1, 1965 and December 31, 1965.
-- 9. Order the table by the employee number.

----FINAL DELIVERABLE 2 QUERY; create mentorship_eligibility query
SELECT DISTINCT ON (t.emp_no)
e.emp_no, 
e.first_name, 
e.last_name,
e.birth_date, 
de.from_date, 
de.to_date, 
t.title
INTO mentorship_eligibility
FROM employees AS e
JOIN dept_employee as de
ON e.emp_no = de.emp_no
JOIN titles as t
ON e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01' AND birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY t.emp_no
