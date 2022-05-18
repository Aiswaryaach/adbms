set serveroutput on;
declare
n number:=&n;
fac number:=1;
i number;
begin
dbms_output.put_line('factorial of the number:'||n);
for i in 1..n
loop
fac:=fac*i;
end loop;
dbms_output.put_line('factorial='||fac);
end;
/