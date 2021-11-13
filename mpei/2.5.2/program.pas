program lab1;
uses Math, sysutils;
type
matrix = array of array of integer;
var
n,sum, x, y: integer;
temp: boolean;
matrix1: matrix;
array1: array of integer;
begin
writeln('n');
read(n);
setLength(matrix1, n, n);
setLength(array1, n);
n:=n-1;
randomize;
for x := 0 to n do begin
array1[x]:= 0;
for y := 0 to n do begin
matrix1[x, y] := random(10);
end;
end;

for x:=0 to n do begin
temp:=true;
for y:=0 to n do begin
if matrix1[x,x] < matrix1[x,y] then begin
temp:=false;
end;
end;
sum:= sum + matrix1[x,y];
end;
if temp = true then begin
array1[x] := 1;
write(array1[x], ' ');
end;

end.
