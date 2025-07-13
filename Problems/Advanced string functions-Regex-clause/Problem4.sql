-- dense_rank() gives the same rank to the duplicate values, and distinct values get unique numbers 
-- max() used as a wrapper to return something - some row - if the output is null or empty 

WITH ranked AS
(
    SELECT *, DENSE_RANK() OVER (ORDER BY salary DESC) AS rn 
    FROM Employee 
)
SELECT MAX(case when rn = 2 then salary end) AS SecondHighestSalary
FROM ranked
