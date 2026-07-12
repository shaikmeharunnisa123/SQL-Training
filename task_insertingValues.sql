create database college_db;
use college_db;

create table student(
student_id int,
student_name varchar(30),
age int,
city varchar(50))

insert into student (student_id,student_name,age,city) values 
(101,"Rahul",21,"Hyderabad"),
(102,"Anjali",20,"Chennai"),
(103,"Ravi",22,"Bangelore"),
(104,"Priya",19,"Pune"),
(105,"kumar",23,"Mumbai");

show databases;