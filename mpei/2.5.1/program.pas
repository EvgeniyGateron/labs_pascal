program lab_2_5_1;

uses math, sysutils;

var
  n, c, x, y: integer;
  r1, r2: real;
  matrix: array [0..9, 0..2] of real;

begin
  writeln('r1 r2');
  read(r1, r2);
  
  randomize;
  for x := 0 to 9 do
  begin
    for y := 0 to 2 do
    begin
      matrix[x, y] := random(trunc(r2));
    end;
  end;
  
  for x := 0 to 9 do
  begin
    write(matrix[x, 0], ' ', matrix[x, 1],' ', matrix[x, 2]);
    writeln;
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
  
  writeln('kolvo ',c);
end.
