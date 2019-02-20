unit Utils;

interface

function GetKeyCmd: integer;
function GetUpKeyCmd: integer;
procedure WrongBeep;
procedure HideCursor;
procedure ShowCursor;
function GetLTime: longint;
function GetTimeSec: word;

implementation

uses
  crt, dos;

function GetKeyCmd: integer;
var
  KeyValue: integer;
begin
  KeyValue := ord(readkey);
  if (KeyValue = 0) then
    KeyValue := 0 - ord(readkey);
  GetKeyCmd := KeyValue;
end;

function GetUpKeyCmd: integer;
var
  KeyValue: integer;
begin
  KeyValue := ord(upcase(readkey));
  if (KeyValue = 0) then
    KeyValue := 0 - ord(readkey);
  GetUpKeyCmd := KeyValue;
end;

procedure WrongBeep;
begin
  sound(500);
  delay(75);
  sound(400);
  delay(75);
  nosound;
end;

procedure HideCursor; assembler;
asm
  mov ah,3
  mov bh,0
  int 10h
  mov ah,1
  or  ch,00100000b
  int 10h
end;

procedure ShowCursor; assembler;
asm
  mov ah,3
  mov bh,0
  int 10h
  mov ah,1
  and ch,11011111b
  int 10h
end;

function GetLTime: longint;
var
  T: datetime;
  w: word;
  L: longint;
begin
  gettime(T.hour, T.min, T.sec, w);
  getdate(T.year, T.month, T.day, w);
  packtime(T, L);
  GetLTime := L;
end;

function GetTimeSec: word;
var
  sec, sec100, w: word;
begin
  gettime(w, w, sec, sec100);
  GetTimeSec := sec * 100 + sec100;
end;


end.