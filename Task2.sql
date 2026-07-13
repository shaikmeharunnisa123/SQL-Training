create database office_db;
use office_db;

create table Department(department_id int primary key,department_name varchar(50) not null);

create table Employee(emp_id int primary key, emp_name varchar(50) not null, 
email varchar(50) unique,salary decimal(10,2) default 30000, age int check(age>=18),
department_id int,
foreign key(department_id) references Department(department_id));

insert into Department values (501,"Development"),(502,"Finance"),(503,"Marketing"),(504,"HR"),(505,"Sales"); 

insert into Employee values (101,"Mehar","mehar@gmail.com",50000,20,501),
(102,"Madhu","madhu@gmail.com",50000,20,501),
(103,"Asha","asha@gmail.com",45000,21,502),
(104,"Sowmya","sowmya@gmail.com",50000,22,504),
(105,"Mounika","mounika@gmail.com",40000,25,504),
(106,"Mani","mani@gmail.com",30000,29,502),
(107,"Praveen","paveen@gmail.com",40000,24,503),
(108,"Manogna","manogna@gmail.com",45000,21,505),
(109,"Manvita","manvita@gmail.com",50000,22,501),
(110,"Manoj","manoj@gmail.com",49000,23,503);

select * from Employee;
select emp_name,salary from Employee;

select * from Employee where salary > 30000;

select * from Employee where age between 20 and 30;

select department_id, count(*)
 from Employee 
 group by department_id 
 having department_id in (501,503);
 
 select distinct department_id from Employee;
 
 select emp_id,emp_name,salary from Employee order by salary desc;
 
 select * from Employee limit 5;
 select emp_id,emp_name from Employee where emp_name like "M%";
 
 select count(*) as TotalEmployees from Employee;
 
 select max(salary) as MaximumSalary from Employee;
 
 select min(salary) as MinSalary from Employee;
 
 select avg(salary) as AverageSalary from Employee;
 
 select department_id,count(*) as employeesCount from Employee
 group by department_id;
 
 select department_id,count(*) as employeesCount from Employee
 group by department_id having count(*) >1;
 
 select e.emp_name,d.department_name from 
 Department as d inner join Employee as e on d.department_id = e.department_id;