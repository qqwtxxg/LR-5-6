program z1;
var arr:array[1..20] of integer;
i,n:integer;
begin
  writeln('Введите 20 чисел: ');
  for i:=1 to 20 do
  begin
    readln(n);
    arr[i] := n;
  end;
  
  for i:=1 to 20 do 
  begin
    if arr[i]>0 then
      arr[i] := 0
    else
      arr[i] := arr[i] * arr[i]
  end;
  
write(arr);
end.