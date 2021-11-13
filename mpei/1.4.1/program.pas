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
for i := 0 to n-1 do begin write('arr[', i, ']='); read(arr[i]); end;
writeln('x  y');
for array_element in arr do
begin
writeln(' ',array_element, ' ', big_brain_formula(array_element));
end;
end.
