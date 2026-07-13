create database company_db;
use company_db;

create table department(dept_id int primary key,dept_name  varchar(50));

insert into department values
(101,"HR"),(102,"FInance"),(103,"IT"),
(104,"Sales"),(105,"Marketing"),
(106,"Support"),(107,"Testing"),
(108,"Adimn"),(109,"Operations"),(110,"Security");
select * from department;

create table Employee(emp_id int primary key,emp_name varchar(50) not null,
email varchar(100) unique,
salary decimal(10,2) default 30000,
age int check(age>=18),
dept_id int,
foreign key(dept_id)
references department(dept_id)
);
desc Employee;

insert into Employee
values(1,"Mehar","mehar@gmail.com",45000,20,101),
(2,"Madhu","madhu@gmail.com",50000,21,102),
(3,"Siri","siri@gmail.com",55000,21,103),
(4,"Lahari","lahari@gmail.com",60000,25,104),
(5,"Pallavi","pallavi@gmail.com",67000,30,105),
(6,"Usha","usha@gmail.com",78000,23,103),
(7,"Henry","henry@gmail.com",52000,31,104),
(8,"Daniel","daniel@gmail.com",65000,45,102),
(9,"vineetha","vineetha@gmail.com",58000,20,101),
(10,"kavya","kavya@gmail.com",75000,35,105);

-- 1. Primary Key

insert into Employee values
(1,"Alex","alex@gmail.com",5000,25,101); 
-- Here employee_id is a primary key, So we can't duplicate the entry,Above query throws an error(1062)

-- 2. Unique key

insert into Employee values
(11,"john","henry@gmail.com",45000,45,102);
-- Here email is a Unique key, So we can't duplicate the entry,Above query throws an error(1062)

-- 3. Not Null

insert into Employee
(emp_id,email,salary,age,dept_id) 
values (11,"email@gmail.com",45000,45,102);
-- Employee name should be exist, cause we have defines it as not null, Above query throws an error(1364)

-- 4. Default

insert into Employee
(emp_id,emp_name,email,age,dept_id) 
values (11,"Hari","hari@gmail.com",20,101);


select * from Employee 
where emp_id = 11;

-- 5. Check 
insert into Employee
(emp_id,emp_name,email,age,dept_id) 
values (12,"Hari","hari@gmail.com",12,101);
-- check constraint is violated

-- 6. Foreign key
insert into Employee
(emp_id,emp_name,email,age,dept_id) 
values (12,"ram","ram@gmail.com",20,999);

select emp_id,emp_name from Employee;

select emp_name,age
from Employee;

select emp_id,emp_name,dept_id from Employee;

-- WHERE clause
select * from Employee where salary > 50000;

select * from Employee where age>25;
select * from Employee where dept_id = 102;
select * from Employee where emp_name = "Mehar";

-- DISTINCT
select distinct dept_id from Employee;

-- ORDER BY
select * from Employee
order by salary;

select * from Employee order by salary desc;

-- Limit 

select * from Employee limit 5;

-- OFFSET

select * from Employee limit 5 offset 3;

-- BETWEEN
select * from Employee 
where salary between 30000 and 50000;

select * from Employee where age between 25 and 45;

-- IN
select * from Employee where dept_id in (101,103,105);

-- NOT IN
select * from Employee where dept_id not in (101,102);

-- IS NULL
select * from Employee where email is null;
-- IS NOT NULL
select * from Employee where email is not null;

-- LIKE 
select * from Employee where emp_name like "M%";

select * from Employee where emp_name like '%a';

select * from Employee where emp_name like '%a%';

select * from Employee where emp_name like '__r_';

-- Aggregate functions - COUNT(),Max(),MIN(),SUM(),AVG()

select count(*) from Employee;

select max(salary) as HighSalary from Employee;

select min(salary) as LowSalary from Employee;

select sum(salary) as TotalSalary from Employee;

select avg(salary) as AverageSalary from Employee;

-- GROUP BY

select dept_id,COUNT(*) from Employee
group by dept_id;

-- HAVING

select dept_id,COUNT(*) from Employee
group by dept_id having COUNT(*)>2; 

-- ALIAS(AS)
select emp_name as Employee_Name,
salary as Employee_Salary from Employee;

select e.emp_name,e.salary from Employee as e;

select dept_id,count(*) from Employee
group by dept_id;

select dept_id,count(*),avg(salary) from Employee
group by dept_id;

select dept_id,min(salary) from Employee group by dept_id;

select dept_id,count(emp_id),avg(salary) from Employee
group by dept_id having count(*) > 2;

select dept_id,emp_name from Employee order by emp_name desc;

-- joins
select d.dept_id,e.emp_name from department as d inner join Employee as e on d.dept_id = e.dept_id;

select d.dept_id,e.emp_name from department as d left join Employee as e on d.dept_id = e.dept_id;

select d.dept_id,e.emp_name from department as d right join Employee as e on d.dept_id = e.dept_id;

 select d.dept_id,e.emp_name from department as d left join Employee as e on d.dept_id = e.dept_id
 union
 select d.dept_id,e.emp_name from department as d right join Employee as e on d.dept_id = e.dept_id;




