---calculate tax percentage for employee no=105
 set serveroutput on
  declare 
  v_salary number(8,2);
  v_emp_id number(4):=105;
  v_tax_value number(10,2);
  v_tax_perc number(3):=10;
  
  begin 
  select salary into v_salary from employees where employee_id =v_emp_id;
v_tax_value:=v_salary *v_tax_perc/100;
dbms_output.put_line('salary ='||v_salary|| '-Tax_value ='|| v_tax_value);
end;

---using function 
create or replace function calc_emp_tax (v_emp_id number,v_tax_perc number)
return number 
is 
v_salary number(8,2);
v_tax_value number (10,2);

begin 
select salary into v_salary from employees where employee_id=v_emp_id;
v_tax_value :=v_salary*v_tax_perc/100;
return v_tax_value;
end;
show errors;

--calling 
declare
v_result number(8,2);
begin 
 v_result :=calc_emp_tax(105,10);
 dbms_output.put_line(v_result);
end;

--calling in sql only 

select employee_id ,last_name ,salary,calc_emp_tax(employee_id,10)

from employees;

---parameter mode 
create or replace function calc_emp_tax2 (v_tax_value out number,v_emp_id number,v_tax_perc number)
return number 
is 
v_salary number(8,2);


begin 
select salary into v_salary from employees where employee_id=v_emp_id;
v_tax_value :=v_salary*v_tax_perc/100;

end;
show errors;

---