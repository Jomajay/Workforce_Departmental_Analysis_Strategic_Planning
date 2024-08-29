/*MySQL Restricting and Sorting data: 

1. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000. 

2. Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order.

3. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in 
department 30 or 100.

4. Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987. 

5. Write a query to display the first_name of all employees who have both "b" and "c" in their first name. 


6. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to 
$4,500, $10,000, or $15,000.

7. Write a query to display the last name of employees whose names have exactly 6 characters.

8. Write a query to display the last name of employees having 'e' as the third character.

9. Write a query to display the jobs/designations available in the employees table

10. Write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees. 

11. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'. 

Aggregate Functions and Group by

1. Write a query to list the number of jobs available in the employees table.

2. Write a query to get the total salaries payable to employees.

3. Write a query to get the minimum salary from employees table.

4. Write a query to get the maximum salary of an employee working as a Programmer. 

5. Write a query to get the average salary and number of employees working the department 90.

6. Write a query to get the highest, lowest, sum, and average salary of all employees.

7. Write a query to get the number of employees with the same job.

8. Write a query to get the difference between the highest and lowest salaries.

9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager. 

10. Write a query to get the department ID and the total salary payable in each department. 

11. Write a query to get the average salary for each job ID excluding programmer.

12. Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.

13. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000. 

14. Write a query to get the average salary for all departments employing more than 10 employees.



MySQL Joins 

1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments. Go to the editor

2. Write a query to find the name (first_name, last name), department ID and name of all the employees.

3. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London. 

4. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name). 

5. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'. 

6. Write a query to get the department name and number of employees in the department. 

7. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.

8. Write a query to display the department ID and name and first name of manager.

9. Write a query to display the department name, manager name, and city. 

10. Write a query to display the job title and average salary of employees.

11. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job. 

12. Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary. 

13. Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years.


Date and Time functions [21 exercises with solution]

1. Write a query to display the first day of the month (in datetime format) three months before the current month. Go to the editor
Sample current date : 2014-09-03
Expected result : 2014-06-01

2. Write a query to display the last day of the month (in datetime format) three months before the current month. 

3. Write a query to get the distinct Mondays from hire_date in employees tables.

4. Write a query to get the first day of the current year.


5. Write a query to get the last day of the current year.


6. Write a query to calculate the age in year. Go to the editor

7. Write a query to get the current date in the following format.
Sample date : 2014-09-04
Output : September 4, 2014

8. Write a query to get the current date in Thursday September 2014 format. Go to the editor
Thursday September 2014

9. Write a query to extract the year from the current date. Go to the editor

10. Write a query to get the DATE value from a given day (number in N).
Sample days: 730677
Output : 2000-07-11


11. Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30' 


12. Write a query to display the current date in the following format. Go to the editor
Sample output: Thursday 4th September 2014 00:00:00


13. Write a query to display the current date in the following format. Go to the editor
Sample output: 05/09/2014

14. Write a query to display the current date in the following format. Go to the editor
Sample output: 12:00 AM Sep 5, 2014

15. Write a query to get the firstname, lastname who joined in the month of June

16. Write a query to get the years in which more than 10 employees joined.

17. Write a query to get first name of employees who joined in 1987.

18. Write a query to get department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.

19. Write a query to get employee ID, last name, and date of first salary of the employees.

20. Write a query to get first name, hire date and experience of the employees.

21. Write a query to get the department ID, year, and number of employees joined.



MySQL string [17 exercises with solution]

1. Write a query to get the job_id and related employee's id.

2. Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'.

3. Write a query to get the details of the employees where the length of the first name greater than or equal to 8.

4. Write a query to display leading zeros before maximum and minimum salary.

5. Write a query to append '@example.com' to email field.

6. Write a query to get the employee id, first name and hire month.

7. Write a query to get the employee id, email id (discard the last three characters).

8. Write a query to find all employees where first names are in upper case. 

9. Write a query to extract the last 4 character of phone numbers.

10. Write a query to get the last word of the street address.

11. Write a query to get the locations that have minimum street length. 

12. Write a query to display the first word from those job titles which contains more than one words.

13. Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position.

14. Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each 
column an appropriate label. Sort the results by the employees' first names.

15. Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. 
Label the column SALARY. 

16. Write a query to display the first eight characters of the employees' first names and indicates the amounts of their salaries with '$' sign. Each '$' sign 
signifies a thousand dollars. Sort the data in descending order of salary.

17. Write a query to display the employees with their code, first name, last name and hire date who hired either on seventh day of any month or seventh month in
any year. */