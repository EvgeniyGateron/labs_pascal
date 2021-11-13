program lab1;

uses Math, sysutils;

var
  n, c, x, y: integer;
  r1, r2: real;
  matrix: array [0..9, 0..2] of real;

begin
  writeln('r1 r2');
  read(r1, r2);
  
  Randomize;
  for x := 0 to 9 do
  begin
    for y := 0 to 2 do
    begin
      matrix[x, y] := Random(trunc(r2));
    end;
  end;
  
  for X := 0 to 9 do
  begin
    Write(Matrix[x, 0], ' ', Matrix[x, 1], Matrix[x, 2]);
    WriteLn;
  end;
  
  for x := 0 to 9 do
  begin
    if (matrix[x, 0] > r1) and (matrix[x, 0] < r2)
    and (matrix[x, 1] > r1) and (matrix[x, 1] < r2)
    and (matrix[x, 2] > r1) and (matrix[x, 2] < r2)
    
    then
    begin
      writeln('stroka ', x);
      c := c + 1;
    end;
    
  end;
  
  writeln(c);
end.
