unit Notes;

interface

const
  MAXVOICES = 12;

type
  NoteRec = record
    NoteArray: array[1..MAXVOICES] of word;
    Dur: word;
  end;

const
  Note0: NoteRec = (NoteArray:(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); Dur:0);

  FreqArray: array[1..22] of word = (0, 495, 524, 555, 555, 588, 623, 623,
     660, 699, 660, 699, 741, 741, 785, 832, 832, 881, 933, 933, 989, 1048);

  R =  1;
  C =  3;
  D =  6;
  E =  9;
  F = 12;
  G = 15;
  A = 18;
  B = 21;

procedure PlayNote(Freq: word);
procedure Wait(Length: word);
procedure EndNote;
function MyKeyPressed: boolean;
function MyReadKey: char;
procedure MyClrScr;
function Power2(E: shortint): real;

implementation
uses
  crt;

function Power2(E: shortint): real;
var
  i: byte;
  RetVal: word;
begin
  RetVal := 1;
  for i := 1 to abs(E) do
    RetVal := RetVal * 2;
  if E >= 0 then
    Power2 := RetVal
  else
    Power2 := 1 / RetVal;
end;

procedure PlayNote(Freq: word);
begin
  sound(Freq);
end;

procedure Wait(Length: word);
begin
  delay(Length);
end;

procedure EndNote;
begin
  nosound;
end;

function MyKeyPressed: boolean;
begin
  MyKeyPressed := keypressed;
end;

function MyReadKey: char;
begin
  MyReadKey := readkey;
end;

procedure MyClrScr;
begin
  clrscr;
end;

begin
end.
