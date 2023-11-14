program z6;
var 
  arr:array of integer;
  i,n,c:integer;
  j:boolean;
begin
  writeln('Введите длину массива: ');
  readln(n);
  SetLength(arr,n);
  
  writeln('Введите элементы массива, размером ', n);
  for i:= 0 to n-1 do 
  begin
    readln(c);
    arr[i]:= c;
  end;
  
  j:= false;
  for i:= 2 to n-1 do
  begin
    if arr[i] < arr[i-1] then
      j:= true;
    break
  end;
  if j= true then 
    writeln('Массив не упорядочен')
  else
    writeln('Массив упорядочен');
end.