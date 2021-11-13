program lab_4_3_3;

uses math, sysutils;

type
  arraytype = array of longint;
  arrayrealtype = array of currency;

function big_brain_formula(n: integer): longint;
var
  factorial: longint;
  i: longint;
begin
  factorial := 1;
  for i := 2 to n do
  begin
    factorial := factorial * i;
  end;
  
  big_brain_formula := factorial;
  
end;

procedure big_brain_procedure(var c: arrayrealtype; a, b: arraytype);
var
  i: longint;
begin
  for i := 0 to length(a) - 1 do
  begin
    if a[i] > b[i] then exit;
  end;
  
  for i := 0 to length(a) - 1 do
  begin
    writeln('factorial ', i);
    writeln('a[', i, '] ', a[i]);
    writeln('b[', i, '] ', b[i]);
    writeln('chislitel ', big_brain_formula(b[i]));
    writeln('znameneel ', (big_brain_formula(a[i]) * big_brain_formula(b[i] - a[i])));
    c[i] := (big_brain_formula(b[i]) * 1.0) / (big_brain_formula(a[i]) * big_brain_formula(b[i] - a[i]));
    writeln('-----------------------------------------------------');
  end;
  
end;

var
  n, temp_n, x: longint;
  array1, array2: arraytype;
  array3: arrayrealtype;

begin
  
  writeln('n');
  read(temp_n);
  n := temp_n - 1;
  
  setlength(array1, temp_n);
  setlength(array2, temp_n);
  setlength(array3, temp_n);
  
  for x := 0 to n do
  begin
    array1[x] := random(3);
    array2[x] := random(4) + 6;
  end;
  
  writeln('-----------------------------------------------------');
  
  for x := 0 to n do
  begin
    write(array1[x], ' ');
  end;
  
  writeln('-----------------------------------------------------');
  
  for x := 0 to n do
  begin
    write(array2[x], ' ');
  end;
  
  writeln('-----------------------------------------------------');
  
  big_brain_procedure(array3, array1, array2);
  
  for x := 0 to n do
  begin
    writeln(array3[x]);
  end;
  
  writeln('-----------------------------------------------------');
  
end.