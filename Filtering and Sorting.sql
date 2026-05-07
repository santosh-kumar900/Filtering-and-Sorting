Create DATABASE Filtering_and_Sorting;
USE Filtering_and_Sorting;
DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50) NOT NULL,
Department VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
Salary NUMERIC(10,2),
Hire_Date DATE
);

INSERT INTO employees(EmpID, EmpName, Department, City, Salary, Hire_Date) VALUES
		(101, 'Rahul Mehta', 'Sales', 'Delhi', 50000, '2020-04-12'),
        (102, 'Priya Sharma', 'HR', 'Mumbia', 62000, '2019-09-25'),
        (103, 'Aman Singh', 'IT', 'Bengaluru', 72000, '2021-03-10'),
        (104, 'Neha Patel', 'Sales', 'Delhi', 48000, '2022-01-14'),
        (105, 'Karan Joshi', 'Marketing', 'Pune', 45000, '2018-07-22'),
        (106, 'Divya Nair', 'IT', 'Chennai', 81000, '2019-12-11'),
        (107, 'Raj Kumar', 'HR', 'Delhi', 60000, '2020-05-28'),
        (108, 'Simaran Kaur', 'Finance', 'Mumbai', 58000, '2021-08-03'),
        (109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000, '2022-02-18'),
        (110, 'Anjali Das', 'Sales', 'Kalkata', 51000, '2023-01-15');

Select * From employees;
/*
Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments.
Answer 1.
*/
SELECT * FROM employees 
Where Department IN('IT' ,'HR');

/*
Question 2 : Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’.
Answer 2.
*/
SELECT * FROM employees
WHERE Department IN ('Sales', 'IT', 'Finance');
/*
Question 3 : Display employees whose salary is between ₹50,000 and ₹70,000.
ANSWER 3.
*/
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 70000;
/*
Question 4 : List employees whose names start with the letter ‘A’.
ANSWER 4.
*/
SELECT * FROM employees
WHERE EmpName Like  'A%' ;
/*
Question 5 : Find employees whose names contain the substring ‘an’.
Answer 5.
*/
SELECT * FROM employees 
WHERE EmpName LIKE '%an%';
/*
Question 6 : Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.
Answer 6.
*/


SELECT * FROM employees
WHERE City IN('Delhi', 'Mumbai') AND Salary>55000;
/*
Question 7 : Display all employees except those from the ‘HR’ department.
ANSWER 7.
*/
SELECT * FROM employees
WHERE Department != 'HR';
/*
Question 8 : Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).
ANSWER 8.
 */       
SELECT * FROM employees 
WHERE Hire_Date BETWEEN '2019-01-01' AND '2022-12-31'
ORDER BY Hire_Date ASC;