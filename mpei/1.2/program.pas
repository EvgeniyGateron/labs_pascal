program lab_1_2;

uses Math;

function big_brain_formula(x, e: real): real;
begin
  big_brain_formula := LogN( e, sqrt(Power(e, 0.1 * x) + x)) / (x + Power(10.7, 1.0 / 3) + ArcTan(x)) + 2.0 / 5;
end;

var
  x, y, e, a, b, s: real;
  n, i: integer;

begin
  writeln('a  b  e  n');
  readln(a, b, e, n);
  x := a;
  s := (a + b) / n;
  writeln('n   x   y');
  for i := 0 to n do
  begin
    y := big_brain_formula(x, e);
    writeln(i, '  ', x:2:2, '  ', y:2:2);
    x := x + s;
  end;
end.