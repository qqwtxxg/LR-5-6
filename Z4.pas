program z4;
var
a: array[1..30] of integer;
b: array[1..30] of integer;
i:integer;

begin
  for i:=1 to 30 do
    a[i] := random(-99,67);
  
  for i:=1 to 30 do 
  begin
    if a[i] mod 2=0 then 
      b[i] := a[i]
  end;
  
  for i:=1 to 30 do
  begin
    write(a[i], '-');
  end;
  writeln();
  for i:=1 to 30 do 
  begin
    write(b[i], '-');
  end;
  writeln();
end.