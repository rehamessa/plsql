--print out the student grade according to the following rules 
--marks 95>>>A
--marks  90 >>>B
--marks  85>>>c
--otherwise F
set serveroutput on;
declare v_mark number;
begin
v_mark:=90;
case v_mark
when 95 then dbms_output.put_line('you got A');
when 90 then 
dbms_output.put_line('you got B');
when 85 then 
dbms_output.put_line('you got c');
else 
dbms_output.put_line('you got F');
end case;
end;
---print out the student grade according to the following rules 
--marks between 91>100>>A
--marks  between 81>90 >>>B
--marks  61>70>>c
--otherwise F

declare
v_mark number;
begin
v_mark:=90;
case 
when v_mark between 91 and 100 then dbms_output.put_line('you got A');
when v_mark between 81 and 90 then dbms_output.put_line('you got B');
when v_mark between 61 and 70 then 
dbms_output.put_line('you got c'); 
else 
dbms_output.put_line('sorry,you got F');
end case;
end;
----case statement:searched case
--if there two case is true then you will get the first one 
declare
v_mark number :=85;
v_level number :=4;
v_major char(15):='SW Engineering';
begin 
case 
when v_mark between 80 and 100 then 
dbms_output.put_line('you got A');
when v_level =4 then 
dbms_output.put_line('you are in second year');
when v_major ='SW Engineering' then 
dbms_output.put_line('you are an analyst');
else
dbms_output.put_line('there is no condition true');
end case;
end;
--display alist of employee_id,name and department according to the next fact
--deptrtment 10 >> 'Accounting'
--department 20 >>'marketing'
--department 30>>'sales'


