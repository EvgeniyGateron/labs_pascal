program lab_1_4_3;

uses Math, sysutils;

var
  n, i: integer;
  sum, temp: real;
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
      temp := a[i] + a[i - 1];
      if i = 1 then 
      begin
        sum := temp
      end;
      if sum > temp then 
      begin
        sum := temp;
      end;
    end;
  end;
  writeln('sum ',sum)
end.