set serveroutput on 

declare
  var_emono number(6);
  var_name varchar2(25);
cursor curs_emp_data is select employee_id,last_name from employees where department_id=10;
begin 
open curs_emp_data; 
fetch curs_emp_data into var_emono ,var_name ;
dbms_output.put_line('the employee number is' || to_char(var_emono));
dbms_output.put_line('the employee number is' || var_name);
close curs_emp_data;
end;

-------------------
declare
  var_emono employees.employee_id%type;
  var_name employees.last_name%type;
cursor curs_emp_data is select employee_id,last_name from employees where department_id=10;
begin 
open curs_emp_data; 
fetch curs_emp_data into var_emono ,var_name ;
dbms_output.put_line('the employee number is' || to_char(var_emono));
dbms_output.put_line('the employee number is' || var_name);
close curs_emp_data;
end;
---------------------------------------------
declare

cursor curs_emp_data is select employee_id,last_name from employees where department_id=10;
var_empdata curs_emp_data%rowtype;
begin 
open curs_emp_data; 
fetch curs_emp_data into var_empdata  ;
dbms_output.put_line('the employee number is' || var_empdata.employee_id);
dbms_output.put_line('the employee number is' ||var_empdata.last_name);
close curs_emp_data;
end;

---for returning more than one row
declare 
cursor curs_emp_data  is select employee_id,last_name,salary where department_id in(10,30);
var_empdata curs_emp_data%rowtype;

begin 
open cur_emp_data;
loop
fetch curs_emp_data into var_empdata;
exit when (curs_emp_data%notfound);
dbms_output.put_line(var_empdata.employee_id ||' '|| var_empdata.last_name);
end loop;
close curs_emp_data;
end;
