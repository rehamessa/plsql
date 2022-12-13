set serveroutput on ;
declare
stdmark number(2);
passmark number(2);
begin 
stdmark:=20;
passmark:=60;
if stdmark>passmark
then dbms_output.put_line('congratulation go to the next exam');
end if;
end;



--if_then_else 
declare 
stdmark number(2);
passmark number(2);
begin 
stdmark :=20;
passmark :=60;
if stdmark>passmark then 
dbms_ouput.put_line('congratulation,go to next level');
else 
dbms_output.put_line('sorry you have to get ' || to_char( passmark-stdmark )|| 'to pass');
end if;
end;

--if_then_elsif 
set serveroutput on ;
declare
marks number(2) :=50;
begin 
if marks between 91 and 100 then 
dbms_output.put_line ('you got A grade');
elsif marks between 81 and 90 then 
dbms_output.put_line('you got B grade');
elsif marks between 71 and 80 then 
dbms_output.put_line('you got c');
elsif marks between 61 and 70 then 
dbms_output.put_line('you got D');
else 
dbms_output.put_line('you got F');
end if;
end;


