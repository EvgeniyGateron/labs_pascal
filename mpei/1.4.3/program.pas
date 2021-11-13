program lab_1_4_3;

uses Math, sysutils;

var
  n, i: integer;
  sum: real;
  a: array of real;

begin
  writeln('n');
  readln(n);
  setlength(a, n);
  sum := 0;
  for i := 0 to n - 1 do
  begin
    write('arr[', i, ']='); 
    read(a[i]);
    if i > 0 then
    begin
      if i = 1 then 
      begin
        sum := a[i] + a[i - 1]
      end;
      if sum > a[i] + a[i - 1] then 
      begin
        sum := a[i] + a[i - 1];
      end;
    end;
  end;
  writeln(sum)
end.