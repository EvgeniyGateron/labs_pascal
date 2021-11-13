program lab1;
uses Math, sysutils;
function big_brain_formula(x: real): real;
begin
big_brain_formula:=sqrt(1.5 - cos(x));
end;
var y,array_element:real;
n, i: integer;
arr : array of real;
begin
writeln('n');
readln(n);
setlength(arr, n);
writeln('x  y');
for array_element in arr do
begin
write('arr[]='); read(array_element);
writeln(' ',array_element, ' ', big_brain_formula(array_element));
end;
end.
