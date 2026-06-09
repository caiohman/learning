--Write a query that prints a list of employee names (i.e.: the name attribute) 
--for employees in Employee having a salary greater than  per month who have been employees for less than  months.
--Sort your result by ascending employee_id.
-- Table Employee
-- Fileds (employee_id, name, months, salary)
select e.name from employee e where e.salary > 2000 and e.months < 10 order by e.employee_id asc;
