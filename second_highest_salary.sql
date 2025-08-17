SELECT IFNULL( 
    (SELECT DISTINCT salary from Employee
    ORDER BY salary DESC LIMIT 1 OFFSET 1),NULL)
AS SecondHighestSalary;
