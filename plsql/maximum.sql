set serveroutput on;
declare 
a number;
b number;
c number;
function findmax(x in number,y in number)
return number
is
z number;
begin
if x>y then
z:=x;
else
z:=y;

end if;
return z;
end;
begin
a:=&a;
b:=&b;
c:=findmax(a,b);
dbms_output.put_line('Maximum of number:'||c);
end;
/