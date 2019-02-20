unit MyString;

interface
  function UpStr(S: string): string;

implementation
  function UpStr(S: string): string;
  var
    Temp: string;
    i: byte;
  begin
    Temp := S;
    for i := 1 to length(S) do
      Temp[i] := upcase(S[i]);
    UpStr := Temp;
  end;

begin
end.