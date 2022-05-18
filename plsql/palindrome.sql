set serveroutput on;
declare 
n number:=&n;
m number;
temp number:=0;
r number;
begin
m:=n;
while n>0
loop
r:=mod(n,10);
temp:=(temp*10)+r;
n:=trunc(n/10);
end loop;
if m= temp
then
dbms_output.put_line('palindrome');
else
dbms_output.put_line('not palindrome');
end if;
end;
/