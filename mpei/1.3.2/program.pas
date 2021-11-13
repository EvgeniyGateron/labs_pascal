program pr132;
uses Math, sysutils;
function big_brain_formula(x, e, k: real): real;
begin
big_brain_formula:= sqrt ( Power( Power(x, (k - 1)), 1.0/k ) + Power( Power(e, (k - 3.0/2)), 1.0/k) ) / (1 + LogN(e,x))
end;
var x,y,e,p,sum,firstmultiplier:real;
n,i,k: integer;
begin
k:=1;
p:= Pi;
writeln('x   n');
readln(x,n);
writeln('e');
readln(e);
firstmultiplier:= sin( (p * n) / (x + 3)  );
writeln('multiplier ', firstmultiplier);
for i:=0 to n do
begin
sum:= sum + big_brain_formula(x, e, k);
k:= k + 1;
writeln('prom: ', sum);
end;
y:= sum * firstmultiplier;
writeln('x  y');
writeln(x, '  ', y);
end.
