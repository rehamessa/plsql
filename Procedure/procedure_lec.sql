set serveroutput on 

declare
v_emp_id number(4):=101;
v_bonous_perc number(3):=10;
v_salary number(8,2);
v_salary_after number(10,2);
begin
select salary into v_salary
from employees
where employee_id=v_emp_id;

v_salary_after :=v_salary+v_salary*v_bonous_perc/100;
update employees set salary=v_salary_after
where employee_id=v_emp_id;
end;

----
create or replace procedure update_emp_sal_porc
is

v_emp_id number(4):=101;
v_bonous_perc number(3):=10;
v_salary number(8,2);
v_salary_after number(10,2);
begin
select salary into v_salary
from employees
where employee_id=v_emp_id;

v_salary_after :=v_salary+v_salary*v_bonous_perc/100;
update employees set salary=v_salary_after
where employee_id=v_emp_id;
end;

----------
create or replace procedure update_emp_sal_porc(v_emp_id number,v_bonous_perc number)
is


v_salary number(8,2);
v_salary_after number(10,2);
begin
select salary into v_salary
from employees
where employee_id=v_emp_id;

v_salary_after :=v_salary+v_salary*v_bonous_perc/100;
update employees set salary=v_salary_after
where employee_id=v_emp_id;
end;
show errors

----------------
--call procedure
declare

begin 
update_emp_sal_porc(101,10);
end;

--call loop
declare 
cursor emp_cursor is select * from employees where department_id=60;
v_emp_bonus number(3) :=10;
begin
for emp_record in emp_cursor loop
if emp_record.job_id='IT_PROG' then
v_emp_bonus :=25;
else
v_emp_bonus:=10;
end if;
update_emp_sal_porc(emp_record.employee_id,v_emp_bonus);
end loop;
end;
select *f rom employees;


----data dictionary
select * from user_objects
where object_type='PROCEDURE';

--- to show program unit 
select * from user_source
where name='UPDATE_EMP_SAL_PORC';

---to grant privilage
grant execute on HR.UPDATE_EMP_SAL_PORC to wallet with admin option;

---------------
