--Samantha was tasked with calculating the average monthly salaries for all employees
--in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after 
--completing the calculation. She wants your help finding the difference between her 
--miscalculation (using salaries with any zeros removed), and the actual average salary.
--Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.
-- Table Employee
-- Fileds (employee_id, name, months, salary)

with samantha_input 
as (select avg(replace(e.salary,  '0', '')) as average from employees e)
select ceil(avg(e.salary) - (select average from samantha_input)) from employees e;

