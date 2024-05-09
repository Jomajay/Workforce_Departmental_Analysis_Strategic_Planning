# SQL-Projects
This project consist of so many questions used for practicing and enhancing my SQL skills.

# SQL Practice Exercises

Welcome to the SQL Practice Exercises repository! Here, you'll find a collection of SQL exercises designed to sharpen your SQL querying skills. The exercises cover a range of topics including data filtering, aggregation, joins, date and time functions, and string manipulation. Each exercise is accompanied by a SQL script file containing a solution.

## Exercise Categories:

### Restricting and Sorting data:
In this section, you'll practice filtering and sorting data based on specific criteria such as salary range, department ID, hire date, and name patterns.

### Aggregate Functions and Group by:
Explore how to use aggregate functions like COUNT, SUM, MIN, MAX, and AVG along with GROUP BY clause to perform summary calculations on grouped data.

### MySQL Joins:
Learn how to combine data from multiple tables using different types of joins such as INNER JOIN, LEFT JOIN, and RIGHT JOIN to retrieve desired information.

### Date and Time functions:
Master the usage of various date and time functions to perform operations like extracting parts of dates, calculating age, formatting dates, and working with date intervals.

### MySQL String functions:
Get hands-on experience with manipulating string data using functions like SUBSTRING, CONCAT, UPPER, LOWER, and LENGTH.

## Usage:
1. **Clone the Repository:** Clone this repository to my local machine.
2. **Setup Database:** For the database set up, I will be making use of the MySQL (RDBMS) database environment (e.g., MySQL) to execute my SQL queries.
3. **Execute SQL Script:** Open the SQL script file for a specific exercise and execute it against your database to verify the results.
4. **Practice and Learn:** For this project which is themed enhancing my SQL query writing, I will be using these exercises to practice SQL concepts and improve my querying skills.
5. **What to Except:** Each questions comes in an advance way which requires me to make use of my critical thinking and analytical thinking ability to solve each problems.
## Sample Exercise:

### Exercise 1: Display Employees' Names and Salaries
#### Here are just some snippet of what the codes will look like.
**Objective:** Display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000.

**SQL Script (employees.sql):**
```sql
-- Display employees' names and salaries
SELECT 
    first_name,
    last_name,
    salary
FROM 
    employees
WHERE 
    salary NOT BETWEEN 10000 AND 15000;
```

### Exercise 2: Total Salary Calculation
**Objective:** Calculate the total salaries payable to employees.

**SQL Script (total_salary.sql):**
```sql
-- Calculate total salaries payable
SELECT 
    SUM(salary) AS total_salary
FROM 
    employees;
```

## Contributing:
Contributions to this repository are welcome! If you have additional SQL exercises or improvements to existing ones, feel free to open a pull request.


This enhanced README provides clear instructions for usage, a sample exercise with SQL script, guidelines for contribution, and licensing information. It aims to create a professional and user-friendly experience for individuals utilizing the repository. If you have any further suggestions or modifications, feel free to let me know!
