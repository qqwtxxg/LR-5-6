program z3;
const
  low_bound = -52;
  hight_bound = 65;

type 
  num_result = array[1..2] of integer;

var
  arr: array[1..20] of integer;
  i, index_5, m,n: integer;
  max, min: num_result;

begin
  for i:=1 to 20 do
    arr[i] := random(hight_bound)-low_bound;

  min[1] := 0;
  min[2] := 0;
  max[1] := 0;
  max[2] := 0;
  index_5 := 0;
  for i:=1 to 20 do
  begin
    if max[1] < arr[i] then
      max[1] := arr[i];
    if min[1] > arr[i] then
      min[1] := arr[i];
    if arr[i] mod 5 = 0 then
      index_5 := i
  end;

  writeln('Максимальное значение и индекс: ', max[1], ' - ' ,max[2]);
  writeln('Минамальнео значение и индекс', min[1], ' - ' ,min[2]);
  writeln('Индекс полследнего элементеа кратного 5: ',index_5);
  
end.