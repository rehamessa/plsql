---create anonymous block : block has no name:not stored in db 
declare 

v_salary number(8,2);
v_emp_id number(4):=101;
v_bonus_perc number(3):=10;
v_salary_after number(10,2);
begin

select salary into v_salary 
from employees 
where employee_id =v_emp_id; 

v_salary_after := v_salary + v_salary*v_bonus_perc/100 ;

update employees
set salary =v_salary_after
where employee_id =v_emp_id;

end;
show errors;


-----update salary by using procedure 
create or replace procedure update_emp_salary_proc (v_emp_id number,v_bonus_porc number)
is 
v_salary number (8,2);
v_salary_after number(10,2);
begin 

select salary into v_salary 
from employees 
where employee_id =v_emp_id;

v_salary_after:=v_salary+v_salary*v_bonus_porc/100;

update employees set salary = v_salary_after where employee_id = v_emp_id;
 end;
 
 ---calling procedure
 declare
 
 begin 
 update_emp_salary_proc(101,10);
 end;
 show errors;
 
 ---create cursor to update all employees
  declare 
   cursor emp_cursor is select employee_id from employees;
begin 
for i in emp_cursor loop
update_emp_salary_proc(i.employee_id,10);
end loop;
end;

