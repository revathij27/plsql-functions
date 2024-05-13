declare
cursor c1 is select empno from employee where rownum<=5;
emp c1%rowtype;
num char(10);
begin
open c1;
fetch c1 into emp;
while c1%found
loop
num:=rev(emp.empno);
dbms_output.put_line(emp.empno||' '||num);
fetch c1 into emp;
end loop;
end;
/

