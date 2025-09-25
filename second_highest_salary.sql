--Using subquery
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary<(SELECT MAX(salary) FROM Employee);

--using IFNULL function
SELECT IFNULL( 
    (SELECT DISTINCT salary from Employee
    ORDER BY salary DESC LIMIT 1 OFFSET 1),NULL)
AS SecondHighestSalary;

