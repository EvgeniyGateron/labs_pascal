program lab1;
uses Math, sysutils;
function big_brain_formula(x: real): real;
begin
if x > 0 then
begin
big_brain_formula:=1-sin(x);
end
else
begin
big_brain_formula:=1-cos(x);
end;
end;
var y,array_element:real;
n, i, c: integer;
arr : array of real;
begin
writeln('n');
readln(n);
setlength(arr, n);
for i := 0 to n-1 do begin write('arr[', i, ']='); read(arr[i]); end;
writeln('x y');
for array_element in arr do
begin
if array_element > 0 then
begin
c:=c + 1;
end;
writeln(' ',array_element, ' ', big_brain_formula(array_element));
end;
writeln(c);
end.
