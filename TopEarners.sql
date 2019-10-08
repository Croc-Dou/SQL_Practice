/*
e define an employee's total earnings to be their monthly  worked, 
and the maximum total earnings to be the maximum total earnings for any employee 
in the Employee table. Write a query to find the maximum total earnings for all employees 
as well as the total number of employees who have maximum total earnings. 
Then print these values as  space-separated integers. a query calculating the amount of error 
(i.e.:  average monthly salaries), and round it up to the next integer. Print NULL when there are no more names corresponding to an occupation.are a total of [occupation_count] [occupation]s.
*/

SELECT months*Salary AS earnings, COUNT(*) FROM employee 
GROUP BY earnings ORDER BY earnings DESC LIMIT 1;
