set serveroutput on;
declare
a number;
b number;
temp number;
procedure swap(x in out number,y in out number)is
begin
dbms_output.put_line('before swapping a='||a||'b='||b);
temp:=x;
x:=y;
y:=temp;

end;
begin
a:=&a;
b:=&b;
swap(a,b);
dbms_output.put_line('after swapping a='||a||   '  b='||b);

end;
/
