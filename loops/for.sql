--print out hello five times 
set serveroutput on 
declare 
begin
for counter in 1..5
loop 
dbms_output.put_line('hello');
end loop;
end;

--print number from one to 10 
declare 
begin
for counter in 1..10
loop
dbms_output.put_line('counter reaches:' ||counter );
end loop;
end;

--print number from 10 to 1
declare
begin  
for counter in reverse 1..10
loop 
dbms_output.put_line('counter reaches:' || counter);
end loop;
end;