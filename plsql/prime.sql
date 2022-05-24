set serveroutput on;
declare
a number;
i number;
c boolean;
--temp boolean;

function prime(n in out number)
return boolean IS
begin

for i in 2..n/2
loop
if mod(n, i) = 0
then
--temp := FALSE;
return FALSE;
end if;
end loop;

--temp := TRUE;
   return TRUE;
   end;

begin
a:=&a;
c:=prime(a);
if c
    then
        dbms_output.put_line('PRIME');
    else
        dbms_output.put_line('NOT PRIME');
    end if;
end;
/


