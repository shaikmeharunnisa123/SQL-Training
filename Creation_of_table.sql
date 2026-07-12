create database User_db;
show databases;

use User_db;
create table department(
dept_id int primary key, dept_name varchar(50));

desc department;

insert into department values(101,"IT"),(102,"Finance"),(103,"HR");

select * from department;