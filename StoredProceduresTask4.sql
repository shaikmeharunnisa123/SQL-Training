-- === Stored Procedure to display all Employees===

DELIMITER //
create procedure display_employees()
BEGIN 
	select * from Employee;
END //

DELIMITER ;
CALL display_employees();

show procedure status where db = "company_db";
