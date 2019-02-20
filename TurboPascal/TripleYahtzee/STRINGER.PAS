unit Stringer;

interface

uses
  graph, crt;

const
  BACK = 8;
  RET = 13;
  ONE = 49;
  TWO = 50;

function GetString(Pnum: char): string;
function GetNumberOfPlayers: byte;
function GetKeyCmd2: integer;

implementation

function GetKeyCmd2 : integer;
var
  KeyValue : integer;
begin
  KeyValue := ord(ReadKey);
  if ord(KeyValue) = 0 then begin
    KeyValue := 0 - ord(ReadKey);
  end;
  GetKeyCmd2 := KeyValue;
end;

function GetString(Pnum: char): string;

  procedure OutTextChar(OrdChar: byte);
  begin
    SetColor(Black);
    MoveTo(GetX-8,GetY);
    OutText('_');
    SetColor(White);
    MoveTo(GetX-8,GetY);
    OutText(chr(OrdChar));
    OutText('_');
  end;

  procedure BackSpace(var Strng: string);
  begin
    if length(Strng) < 1 then
      exit;
    SetColor(Black);
    MoveTo(GetX-16,GetY);
    OutText(Strng[length(Strng)]);
    OutText('_');
    SetColor(White);
    MoveTo(GetX-16,GetY);
    OutText('_');
  end;

var
  TempString: string;
  i, TempCmd: integer;
begin
  TempString := '';
  OutText('_');
  repeat
    TempCmd := GetKeyCmd2;
    case TempCmd of
      32..126 : if length(TempString) < 12 then begin
                  OutTextChar(TempCmd);
                  TempString := TempString + chr(TempCmd);
                end;
      RET     : begin
                  for i := 1 to length(TempString) do
                    BackSpace(TempString);
                  MoveTo(GetX-8,GetY);
                  SetColor(Black);
                  OutText('_');
                  MoveTo(GetX-8,GetY);
                  SetColor(White);
                  if length(TempString) < 1 then
                    TempString := 'Player ' + PNum;
                  OutText(TempString);
                  GetString := TempString;
                  exit;
                end;
      BACK    : begin
                  BackSpace(TempString);
                  delete(TempString,length(TempString),1);
                end;
    end;
  until FALSE;
end;

function GetNumberOfPlayers: byte;
begin
  repeat
    case GetKeyCmd2 of
      ONE : begin
              GetNumberOfPlayers := 1;
              OutText('1');
              exit;
            end;
      TWO : begin
              GetNumberOfPlayers := 2;
              OutText('2');
              exit;
            end;
    end;
  until FALSE;
end;


end.