{ Jay French
  TwoPower.pas
  11/26/1994 }

unit TwoPower;

interface

function TwoToThe(Power: byte): longint;

implementation

function TwoToThe(Power: byte): longint;
var
  Accum: longint;
  i: byte;
begin
  Accum := 1;
  for i := 1 to Power do
    Accum := Accum * 2;
  TwoToThe := Accum;
end;

{ initialization }
end.