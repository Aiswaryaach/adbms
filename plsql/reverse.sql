set serveroutput on;
declare
num number;
r number:=0;
begin 
num:=&num;
while num>0
loop
r:=(r*10)+mod(num,10);
num:=trunc(num/10);
end loop;
dbms_output.put_line('reverse of the number' ||r);
end;
/