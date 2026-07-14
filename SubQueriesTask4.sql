
-- ========Display the employee with highest salary

use company_db;
select * from Employee 
where salary = (select max(salary) from Employee);


