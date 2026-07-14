
-- =====Database Administration and Transactions=====
use company_db;
-- To display users from mysql
select user,host from mysql.user;

-- To create user and set Password
create user 'Student1'@'%'
identified by 'Student@123';

-- To show the privilages of user 'Student1'
show grants for 'Student1'@'%';

-- Granting select privilage to user 'Student1'
grant select on company_db.* 
to 'Student1'@'%';

show grants for 'Student1'@'%';

-- ============Transactions==========
start transaction;
set autocommit = 0; 
select * from Employee where emp_id = 1;

-- Upadte the salary
update Employee
set salary = salary+1000
where emp_id = 1;

-- Then rollback
rollback;

-- Again check the salary
select * from Employee where emp_id = 1;

-- New Transaction
start transaction;
update Employee
set salary = salary+2000
where emp_id = 6;
select * from Employee where emp_id = 6;
commit;


-- ======= Table Modification ========

-- Adding phone column to Employee table

select * from Employee;
alter table Employee
add column phone varchar(10);

update Employee 
set phone  = '9052150617'
where emp_id = 1;

update Employee 
set phone  = '9052150617'
where emp_id = 2;

update Employee 
set phone  = '6052150617'
where emp_id = 3;

update Employee 
set phone  = '7252150617'
where emp_id = 4;

update Employee 
set phone  = '9052750617'
where emp_id = 6;



select * from Employee;

-- truncate table Employee;
-- drop table Employee;
-- drop table departmet;
-- drop database company_db;