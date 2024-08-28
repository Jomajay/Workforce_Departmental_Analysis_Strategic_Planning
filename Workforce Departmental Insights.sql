-- activating the database  for the project
USE `second database`;

-- query to return all the table present in the database
SELECT * FROM countries;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM job_history;
SELECT * FROM jobs;
SELECT * FROM locations;
SELECT * FROM regions;

-- query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000. 
SELECT 
     concat(first_name, ' ', last_name) AS full_name,
     salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;

-- query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order
SELECT
     concat(first_name, ' ', last_name) AS employees_name,
     Department_id
FROM employees
WHERE DEPARTMENT_ID = 30 OR DEPARTMENT_ID = 100
ORDER BY Employees_name ASC;

/*query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in 
department 30 or 100*/
SELECT 
	concat(first_name, ' ', last_name) AS full_name,
    salary
FROM employees
WHERE (salary NOT BETWEEN 10000 AND 15000)
	AND (department_id = 30 OR department_id = 100);

-- query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987
SELECT 
	concat(first_name, ' ', last_name) AS employees_name,
    Hire_date
FROM employees
WHERE YEAR(Hire_Date) = 1987
ORDER BY employees_name ASC;

-- query to display the first_name of all employees who have both "b" and "c" in their first name. 
SELECT 
	first_name
FROM employees
WHERE first_name LIKE '%b%c%';

/* query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary 
is not equal to $4,500, $10,000, or $15,000*/
SELECT 
	e.last_name, 
    j.job_title,
    e.salary
FROM employees AS e
LEFT JOIN jobs AS j
ON e.job_id = j.job_id
WHERE job_title IN ('Shipping Clerk', 'Programmer') 
	AND (salary NOT IN (4500, 10000, 15000));
    
-- query to display the last name of employees whose names have exactly 6 characters.
SELECT 
	last_name
FROM employees
-- WHERE last_name LIKE '______';
WHERE length(last_name) = 6;

-- query to display the last name of employees having 'e' as the third character.
SELECT 
	last_name
FROM employees
WHERE last_name LIKE '__e%';

-- query to display the jobs/designations available in the employees table
SELECT 
	DISTINCT (j.job_title),
	e.job_id
FROM employees AS e
JOIN jobs AS j
ON e.job_id = j.job_id;

-- query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees. 
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    salary,
    ROUND((salary * (15/100)), 2) AS PF
FROM employees;

-- query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'. 
SELECT *
FROM employees 
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');

-- query to list the number of jobs available in the employees table.
SELECT 
	COUNT(DISTINCT employees.job_id) AS num_jobs,
       jobs.job_title
FROM employees
JOIN jobs 
ON employees.job_id = jobs.job_id
GROUP BY jobs.job_title;

-- query to get the total salaries payable to employees.
SELECT
	SUM(Salary)
FROM employees;

--  query to get the minimum salary from employees table.
SELECT 
	MIN(salary) AS min_salary
FROM employees;

-- query to get the maximum salary of an employee working as a Programmer
SELECT 
	MAX(e.salary) AS max_salary,
    j.job_title
FROM employees AS e
JOIN jobs AS j
WHERE job_title IN ('Programmer');

-- query to get the average salary and number of employees working the department 90
SELECT 
	AVG(e.salary) AS avg_salary,
    COUNT(d.department_name) AS num_employees
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id
WHERE d.department_id = 90;

-- query to get the highest, lowest, sum, and average salary of all employees
SELECT 
	concat(first_name, ' ', last_name) AS full_name,
		MAX(salary) AS max_salary,
			MIN(salary) AS min_salary,
				SUM(salary) AS total_salary,
					ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY full_name;

-- query to get the number of employees with the same job.
SELECT 
	COUNT(first_name) AS num_employees,
    j.job_title
FROM employees AS e
JOIN jobs AS j
ON e.job_id = j.job_id
GROUP BY j.job_title;

-- query to get the difference between the highest and lowest salaries
SELECT
	MAX(salary) - MIN(salary) AS salary_diff
FROM employees;
				-- OR
SELECT
	(SELECT 
		MAX(salary) 
			FROM employees) - 
				(SELECT 
					MIN(salary) 
						FROM employees) 
							AS salary_diff;

-- query to find the manager ID and the salary of the lowest-paid employee for that manager
SELECT 
	concat(first_name, ' ', last_name) AS manager_name, 
	MIN(e.salary) AS lowest_salary,
    e.job_id,
    j.job_title
FROM employees AS e
JOIN jobs AS j
ON e.job_id = j.job_id
WHERE j.job_title LIKE '% manager'
GROUP BY e.job_id, manager_name;
					-- OR
SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS manager_name, 
		MIN(e.salary) AS lowest_salary,
    e.job_id
FROM employees AS e
JOIN jobs AS j 
ON e.job_id = j.job_id
WHERE e.job_id 
	IN 
		(SELECT job_id 
			FROM jobs 
				WHERE job_title LIKE '% manager')
GROUP BY e.job_id, manager_name;

-- query to get the department ID and the total salary payable in each department. 
SELECT
	e.DEPARTMENT_ID,
	d.department_name,
	SUM(e.salary) AS salary_payable
FROM employees AS e
JOIN departments AS d
ON e.department_id = d.department_id
GROUP BY d.department_name, e.DEPARTMENT_ID;

-- query to get the average salary for each job ID excluding programmer
SELECT 
	j.job_title,
    ROUND(AVG(e.salary),0) AS avg_salary
FROM employees AS e
JOIN jobs AS j
ON e.job_id = j.job_id
WHERE j.job_title NOT IN ('Programmer')
GROUP BY j.job_title;

--  query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only
SELECT 
	job_id,
		SUM(salary) AS total_salary,
			MAX(salary) AS max_salary,
				MIN(salary) AS min_salary,
					ROUND(AVG(salary),0) AS avg_salary
FROM employees
WHERE department_id = 90
GROUP BY job_id;

-- query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
SELECT
	job_id,
    MAX(salary) AS max_sal
FROM employees
WHERE salary >= 4000
GROUP BY job_id;

-- query to get the average salary for all departments employing more than 10 employees
SELECT 
	avg(e.salary) AS avg_salary,
	d.department_name
FROM employees AS e
JOIN departments AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(*) > 10;

-- query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments
SELECT 
	dep.department_name,
    loc.location_id,
    loc.street_address,
    loc.city,
    loc.state_province,
    cou.country_name
FROM departments AS dep
LEFT JOIN locations AS loc 
ON dep.location_id = loc.location_id
LEFT JOIN countries AS cou
ON loc.country_id = cou.country_id;

-- query to find the name (first_name, last name), department ID and name of all the employees 
SELECT 
	e.first_name,
    e.last_name, 
    d.department_id,
    d.department_name
FROM employees AS e
JOIN departments AS d
ON e.department_id = d.department_id;

-- query to find the name (first_name, last_name), job, department ID and name of the employees who works in London. 
SELECT 
	e.first_name,
    e.last_name,
    j.job_title, 
    d.department_id, 
    d.department_name, 
    c.country_name
FROM employees AS e
	JOIN departmentS AS d 
		ON e.department_id = d.department_id
			JOIN jobs AS j 
				ON e.job_id = j.job_id
					JOIN locations AS l
						ON d.location_id = l.location_id
							JOIN countries AS c
								ON l.country_id = c.country_id
WHERE country_name = 'UNITED KINGDOM';

-- query to find the employee id, name (last_name) along with their manager_id and name (last_name). 
SELECT
	e.employee_id,
    e.last_name,
    m.manager_id,
    m.last_name AS managers_last_name
FROM employees AS e
JOIN employees AS m
ON e.manager_id = m.employee_id;

-- query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'
SELECT 
	concat(first_name, ' ', last_name) AS full_name,
    hire_date
FROM employees
WHERE Hire_date > (SELECT hire_date FROM employees WHERE last_name IN ('Jones'));

-- query to get the department name and number of employees in the department
SELECT
	COUNT(*) AS num_employee,
    d.department_name
FROM employees AS e
JOIN departments AS d
ON e.department_id = d.department_id
GROUP BY d.department_name;

-- query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90
SELECT 
    (e.employee_id),
    (j.job_title),
    DATEDIFF(jh.End_date, jh.Start_date) AS date_diff
FROM employees AS e
JOIN jobs AS j
ON e.job_id = j.job_id
JOIN job_history AS jh
ON e.department_id = jh.department_id
WHERE jh.department_id = 90;

-- query to display the department ID and name and first name of manager
SELECT
	e.first_name,
    e.department_id,
    m.first_name AS managers_name
FROM employees AS e
JOIN employees AS m
ON e.manager_id = m.employee_id;

-- query to display the department name, manager name, and city.
SELECT 
	concat(e.first_name, ' ', last_name) AS Managers_name,
    d.department_name,
    d.manager_id,
    l.city
FROM employees AS e
JOIN departments AS d
ON e.manager_id = d.manager_id
LEFT JOIN locations AS l
ON d.location_id = l.location_id;

-- query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job. 
SELECT 
    jo.job_title,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    e.salary - j.min_salary AS salary_difference
FROM employees AS e
JOIN (
        SELECT 
			job_id,
            MIN(salary) AS min_salary
        FROM employees
        GROUP BY job_id
    ) AS j  
ON e.job_id = j.job_id
JOIN jobs AS jo
ON e.job_id = jo.job_id;

-- query to display the job history that were done by any employee who is currently drawing more than 10000 of salary. 
SELECT 
	concat(e.first_name, ' ', e.last_name) AS full_name,
    e.salary,
    jh.*
FROM employees AS e
JOIN job_history AS jh
ON e.employee_id = jh.employee_id
WHERE e.salary > 10000;

/*query to display department name, name (first_name, last_name), hire date, salary of the manager for 
all managers whose experience is more than 15 years.*/
SELECT 
	concat(e.first_name, ' ', e.last_name) AS manager_name,
    d.department_name,
    e.hire_date,
    e.salary
    FROM employees AS e
	JOIN departments AS d
    ON e.manager_id = d.manager_id
    WHERE e.hire_date < DATE_SUB(NOW(), INTERVAL 15 YEAR);
    
/* query to display the first day of the month (in datetime format) three months before the current month. Go to the editor
Sample current date : 2014-09-03 Expected result : 2014-06-01*/
SELECT 
    LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 3 MONTH)) + INTERVAL 1 DAY AS FirstDayOfFirstMonth,
    LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)) + INTERVAL 1 DAY AS FirstDayOfSecondMonth,
    LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 1 MONTH)) + INTERVAL 1 DAY AS FirstDayOfThirdMonth;
    
-- query to display the last day of the month (in datetime format) three months before the current month
SELECT 
    LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 3 MONTH)) LastDayOfFirstMonth,
    LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)) LastDayOfSecondMonth,
    LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 1 MONTH)) LastDayOfThirdMonth;
    
-- query to get the distinct Mondays from hire_date in employees tables
SELECT
	DISTINCT(hire_date),
    DAYNAME(hire_date) AS Mondays
FROM employees
WHERE DAYNAME(hire_date) = 'monday';

    


    
    
