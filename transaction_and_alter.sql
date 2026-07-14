use company_db;


 -- ==== Transaction Control=======
start transaction;
set autocommit = 0;

update Employee
set salary = salary + 1000
where emp_id = 1;

select * from Employee;

update Employee
set salary = salary - 1000
where emp_id = 2;
rollback;

start transaction;
update Employee
set emp_name = "Madhavi"
where emp_id = 2;

commit;


-- ======= Alter =========

alter table Employee
add column qualification varchar(20);

alter table Employee
rename column qualification to Qualification;

alter table Employee 
modify qualification varchar(50);

alter table Employee
drop qualification;




 