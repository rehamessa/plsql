set serveroutput on 
declare
        v_emp_id number(4) := 101;
        v_tax_perc number(2) := 10;  
        v_salary number(8, 2);      v_tax_value number(8, 2);  
begin   
    select salary into v_salary
    from employees  where employee_id = v_emp_id;

     v_tax_value := v_salary * v_tax_perc / 100;
     dbms_output.put_line('Salary = '||v_salary ||', tax value = '||v_tax_value);
end;


---function
create or replace function cal_emp_tax_func(v_emp_id number ,v_tax_perc number)
return number 
is 

v_salary number(8,2);
v_tax_value number(8,2);

begin 
select salary into v_salary
from employees where employee_id=v_emp_id;

v_tax_value :=v_salary*v_tax_perc/100;
return v_tax_value ;
end;
show errors

----calling function
declare 
v_t_value number(8,2);
begin 
v_t_value :=cal_emp_tax_func(101,10);
dbms_output_line('Tax Value'
end;
----
------calling function in sql
--must be not have DML
--function has non sql  parameter
---%row type will not be use ,boolean 
select employee_id,last_name,salary ,cal_emp_tax_func(employee_id,10) as tax
from employees