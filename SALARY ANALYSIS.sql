Create database  salaries;


-- Q1 show all columns and rows in table ?
Select * from salaries;

-- Q2 Show only the employee name and job title from the column? 
 Select Employeename,Jobtitle from salaries;
 
 -- Q3 Show only the number of Employees in the table ?
 SELECT 
    COUNT(*)
FROM
    salaries;
 
 -- Q4 show the unique job titles from the table ? 
 SELECT DISTINCT
    Jobtitle
FROM
    salaries;
 
 -- Q5 Show the job title and overtime pay  for all employees with overtime pay greater than 50000 ? 
 SELECT 
    jobTitle, Overtimepay
FROM
    salaries
HAVING Overtimepay > 50000;

-- Q6 Show the average base pay for all the employees ? 
SELECT 
    AVG(Basepay) AS 'Average Basepay'
FROM
    salaries;

-- Q7 show the top 10 highest paid Employees ? 
SELECT 
    Employeename, Totalpay
FROM
    salaries
ORDER BY Totalpay DESC
LIMIT 10;

-- Q8 Show the average of basepay ,overtimepay ,and otherpay for each employees ?
SELECT 
    EmployeeName,
    (BasePay + OvertimePay + OtherPay) / 3 AS 'Average of each employee'
FROM
    salaries;-- We have used mathematical Equation.

-- Q9 Show all the Employees who have the word 'Manager' in their job Title ? 
SELECT 
    Employeename, Jobtitle
FROM
    salaries
WHERE
    jobtitle LIKE '%Manager%';

-- Q10 Show all employees with a job title not equal to 'Manager'? 
SELECT 
    Employeename, Jobtitle
FROM
    salaries
WHERE
    jobtitle != 'Manager';

-- Q 11 Show all employees with a total pay between 50,000 and 75,000 .
SELECT 
    *
FROM
    salaries
WHERE
    TotalPay BETWEEN 50000 AND 75000;
 
 -- Q 12 Show all employees with a base pay less than 50,000 or a total pay greater than 10,0000 ?
 Select * from salaries 
 where basepay < 50000 and TotalPay > 100000; 
 
 -- Q 13 Show all employees with a total pay benefits value between 125,000 and 150,000 a job title containing the word 'Director' ? 
  SELECT 
    *
FROM
    salaries
WHERE
    TotalPayBenefits BETWEEN 125000 AND 150000
HAVING JobTitle LIKE '%Director%';
  
  -- Q 14 Show all employees ordered by their total pay benefits in descending order ?
  SELECT 
    *
FROM
    salaries
ORDER BY TotalPayBenefits DESC;
  
  
  -- Q 15 Show all job title with an average base pay of at least 100,000 and order them by the average base pay in descending order ? 
  SELECT 
    jobtitle, AVG(Basepay) AS 'Avgbasepay'
FROM
    salaries
GROUP BY jobtitle
HAVING AVG(basepay) >= 100000
ORDER BY Avgbasepay DESC;
  
  -- Q 16 Delete the column  
  alter table salaries 
  drop column Benefits;
  
  -- Q 17 update the base pay of all employees with the job title containing 'Manager' by increasing it by 10 % ? 
  
  update salaries
  set Basepay = Basepay * 1.1 
  where jobtitle like '%Manager%';
  
  -- Q 18 delete all employees 	who have no overtimepay ? 
  Select * from salaries
  where overtimepay = 0 ;
  
  delete from salaries
  Where overtimepay = 0;
  
  Select count(*) from salaries 
  where overtimepay =0;
  
	