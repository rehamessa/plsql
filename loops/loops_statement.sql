--print out statement 'hello' five times
 set serveroutput on 
 declare 
 counter number :=0;
 begin 
 loop 
 dbms_output.put_line('Hello');
 counter:=counter+1;
 exit when(counter =5);
 end loop;
 end;
 
 --by using if  not  exit when 
 declare 
 counter number :=0;
 begin 
 loop 
dbms_output.put_line('Hello');
counter :=counter+1;
 if counter = 5 then
 exit; 
 end if;
 end loop;
 end ;
  --print number from 1 to 10 
  declare 
  counter number :=1;
  begin 
  loop
  dbms_output.put_line( counter);
  counter:=counter+1;
  exit when( counter=10);
  end loop;
  end; 