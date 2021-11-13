program pr16;
uses Math;
function big_brain_formula_2(x,a: real): real;
begin
big_brain_formula_2:=a * sqrt(3) + sqrt( Power( (Power(sqr(a), 1.0/3) - Power(sqr(x - a), 1.0/3)) , 3) )
end;
function big_brain_formula_1(x,a: real): real;
begin
big_brain_formula_1:=sqrt( sqrt(16*Power(a, 4)+4*sqr(a)*sqr(x)) - sqr(x)-sqr(a));
end;
var x,dx,a,y:real;
n,i: integer;
begin
writeln('A X DX');
readln(a, x, dx);
writeln('n');
readln(n);
writeln('n  x  y');
for i:=0 to n do
begin
if x < 0 then
begin
writeln(i, ' ', x, ' ', big_brain_formula_1(x, a) );
end
else begin
writeln(i, ' ', x, ' ', big_brain_formula_2(x, a) );
end;
x:= x + dx;
end;
end.
