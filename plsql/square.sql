set serveroutput on;

declare
a number;
b number;
procedure square(x in number,y out number)is
begin
y:=x*x;
end;
begin
a:=&a;
square(a,b);
dbms_output.put_line('Square of the number:'||b);
end;
/