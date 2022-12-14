--print out hello 5 times by using while 
set serveroutput on 
declare 
counter number :=1;
begin
while(counter <=5)
loop 
dbms_output.put_line('hello');
counter:=counter+1;
end loop;
end;

--print out number from 1 to 10 
declare 
counter number :=1;
begin 
while(counter<=10)
loop
dbms_output.put_line('counter reaches :' || counter);
counter :=counter+1;
end loop;
end;


