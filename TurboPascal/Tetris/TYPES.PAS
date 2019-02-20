unit Types;

interface

uses
  Constnts;

var
  Screen: array[1..SCREENSIZE,1..10] of word;
  ColorArray: array[1..3] of word;
  HighestLevel: byte;

type
  box = object
    X, Y: shortint;
    function OnScreen: boolean;
  end;

  block = object
    Loc, Coord: Array[1..4] of box;
    Dir, BlockType: byte;
    function Init(T: byte): boolean;
    function Move(Horiz: shortint; Vert, Rot: byte): boolean;
    procedure Show(Fill: boolean);
    procedure Rotate;
    procedure MoveRt;
    procedure MoveLt;
    function MoveDn: boolean;
    function CheckOK: boolean;
    function GetLevel: byte;
    procedure BlockToScreen;
  end;

  procedure Out(Col, Row: shortint; Fill: word);
  procedure InitScreen;


implementation

uses
  graph, crt;

{ Code for box	and block functions }
function box.OnScreen: boolean;
begin
  OnScreen := ((X >= 1) AND (X <= 10) AND (Y > 0));
end;


function block.Init(T: byte): boolean;
var
  i: byte;
begin
  BlockType := T mod 7;
  Dir :=	UP;

  Loc[1].X :=  0;
  Loc[1].Y :=  0;
  Loc[2].X :=  0;
  Loc[2].Y :=  1;
  Loc[3].X :=  0;
  Loc[3].Y := -1;
  Loc[4].X :=  1;
  Loc[4].Y :=  0;

  case BlockType of
    LO: begin
          Loc[4].X := 0;
          Loc[4].Y := -2;
        end;
    RH: Loc[4].Y := 1;
    LH: begin
          Loc[4].X := -1;
          Loc[4].Y := 1;
        end;
    SQ: begin
          Loc[3].X := 1;
          Loc[3].Y := 1;
        end;
    SS: Loc[3].X := 1;
    ZZ: begin
          Loc[3].X := -1;
          Loc[4].X := -1;
        end;
  end;

  if T >= 7 then begin
    Coord[1].X := 2;
    Coord[1].Y := SCREENSIZE - 2;
  end else begin
    Coord[1].X := 5;
    Coord[1].Y := SCREENSIZE - 1;
  end;
  for i := 1 to 4 do begin
    Coord[i].X := Coord[1].X + Loc[i].X;
    Coord[i].Y := Coord[1].Y + Loc[i].Y;
  end;
  Show(DRAW);
  Init := CheckOK;
end;

function block.Move(Horiz: shortint; Vert, Rot: byte): boolean;
var
  New: Array[1..4] of box;
  NewDir, i: byte;
  OK: boolean;
begin
  NewDir := (Dir + 4 - Rot) MOD 4;
  New[1].X := Coord[1].X + Horiz;
  New[1].Y := Coord[1].Y - Vert;
	if NewDir = Dir then
		for i := 1 to 4 do begin
			New[i].X := Coord[i].X +	Horiz;
			New[i].Y := Coord[i].Y -	Vert;
		end
	else
		case NewDir of
			UP: for i := 2 to 4 do begin
					  New[i].X := New[1].X + Loc[i].X;
					  New[i].Y := New[1].Y + Loc[i].Y;
				  end;
			RT: for i := 1 to 4 do begin
					  New[i].X := New[1].X + Loc[i].Y;
					  New[i].Y := New[1].Y - Loc[i].X;
				  end;
			DN: for i := 1 to 4 do begin
					  New[i].X := New[1].X - Loc[i].X;
					  New[i].Y := New[1].Y - Loc[i].Y;
				  end;
			LT: for i := 1 to 4 do begin
					  New[i].X := New[1].X - Loc[i].Y;
					  New[i].Y := New[1].Y + Loc[i].X;
				  end;
		end;

	OK := TRUE;
	for i := 1 to 4 do
		if NOT New[i].OnScreen OR (Screen[New[i].Y, New[i].X] <> black) then
			OK := FALSE;

	if (OK) then begin
		Show(ERASE);
		for	i := 1 to 4 do begin
			Coord[i].X := New[i].X;
			Coord[i].Y := New[i].Y;
		end;
		Dir	:= NewDir;
		Show(DRAW);
	end;

	Move := OK;
end;

procedure block.Show(Fill: boolean);
var
  i: byte;
  Color: word;
begin
  if Fill then
    case BlockType of
      LO, SQ, TT: Color := ColorArray[1];
      RH, ZZ: Color := ColorArray[2];
      LH, SS: Color := ColorArray[3];
    end
  else
    Color := black;

  for i := 1 to 4 do
  	if Coord[i].OnScreen then
      Out(Coord[i].X, Coord[i].Y, Color);
end;

procedure block.Rotate;
begin
  if BlockType <> SQ then
    Move(0, 0, 1);
end;

procedure block.MoveRt;
begin
  Move(1, 0, 0);
end;

procedure block.MoveLt;
begin
 Move(-1, 0, 0);
end;

function block.MoveDn: boolean;
begin
  MoveDn := Move(0, 1, 0);
end;

function block.GetLevel: byte;
begin
  GetLevel := byte(Coord[1].Y);
end;

function block.CheckOK: boolean;
var
  OK: boolean;
  i: byte;
begin
  OK := TRUE;
  for i:= 1 to 4 do
		if Screen[Coord[i].Y, Coord[i].X] <> black then
      OK := FALSE;
  CheckOK := OK;
end;

procedure block.BlockToScreen;
var
  i: integer;
  Color: word;
begin
  case BlockType of
    LO, SQ, TT: Color := ColorArray[1];
    RH, ZZ: Color := ColorArray[2];
    LH, SS: Color := ColorArray[3];
  end;

  for i := 1 to 4 do begin
    Screen[Coord[i].Y, Coord[i].X] := Color;
    if Coord[i].Y > HighestLevel then
      HighestLevel := Coord[i].Y;
  end;
end;

procedure Out(Col, Row: shortint; Fill: word);
var
  Square: array[1..4] of pointtype;
begin
  moveto(Col * 20 - 8, (20 - Row) * 20);
  Square[1].X := getx;
  Square[1].Y := gety + 1;
  Square[2].X := Square[1].X;
  Square[2].Y := Square[1].Y + 18;
  Square[3].X := Square[1].X + 18;
  Square[3].Y := Square[2].Y;
  Square[4].X := Square[3].X;
  Square[4].Y := Square[1].Y;
  if Fill = black then begin
    inc(Square[2].Y);
    inc(Square[3].Y);
  end;
  setfillstyle(solidfill, Fill);
  setcolor(Fill);
  fillpoly(4, Square);
end;

procedure InitScreen;
var
  i, j: byte;
begin
  for i := 1 to SCREENSIZE do
    for j := 1 to 10 do
      Screen[i,j] := black;
end;


end.