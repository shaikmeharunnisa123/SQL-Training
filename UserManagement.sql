use company_db;
create user 'rani'@'%'
identified by 'rani@123';

select user,host from mysql.user;
show grants for 'rani'@'%';

-- Granting permission to user rani

grant select,insert on company_db.* to 'rani'@'%';
 
show grants for 'rani'@'%';

select * from Department;

-- Revoke permissions from user rani

revoke insert on company_db.* from 'rani'@'%';

revoke select on company_db.* from 'rani'@'%';

show grants for 'rani'@'%';

