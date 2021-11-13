program lab1;

uses math, sysutils;

type
  matrix = array [0..4, 0..4] of integer;

function big_brain_formula(a, b: matrix): boolean;
var
  x, y: integer;
begin
  big_brain_formula := true;
  
  for x := 0 to 4 do
  begin
    for y := 0 to 4 do
    begin
      if a[x, y] < b[x, y] then 
      begin
        big_brain_formula := false;
      end;
    end;
  end;
  
end;

var
  n, x, y: integer;
  temp: boolean;
  matrix1, matrix2: matrix;
  c: array [0..4] of integer;

begin
  
  randomize;
  for x := 0 to 4 do
  begin
    for y := 0 to 4 do
    begin
      matrix1[x, y] := random(10);
      matrix2[x, y] := random(10);
    end;
  end;
  
  writeln('-----------------------------------------------------');
  
  for x := 0 to 4 do
  begin
    write(matrix1[x, 0], ' ', matrix1[x, 1], ' ', matrix1[x, 2], ' ', matrix1[x, 3], ' ', matrix1[x, 4]);
    writeln;
  end;
  
  writeln('-----------------------------------------------------');
  
  for x := 0 to 4 do
  begin
    write(matrix2[x, 0], ' ', matrix2[x, 1], ' ', matrix2[x, 2], ' ', matrix2[x, 3], ' ', matrix2[x, 4]);
    writeln;
  end;
  
  writeln('-----------------------------------------------------');
  
  if big_brain_formula(matrix1, matrix2) then 
  begin
    for x := 0 to 4 do
    begin
      for y := 0 to 4 do
      begin
        c[x] := c[x] + matrix1[x, y] + matrix2[x, y];
      end;
    end;
  end;
  
  for x := 0 to 4 do
  begin
    writeln(c[x]);
  end;
  
end.
