use company_db;
create index idx_emp_name
on Employee(emp_name);

select * from Employee where emp_name = "Mehar";

