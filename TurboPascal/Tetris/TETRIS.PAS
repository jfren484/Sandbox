program tetris;
{ Jay French }

uses
  Types, Constnts, Utils, crt, graph;

const
  SPACE =  32;
  LARR	= -75;
  RARR	= -77;
  DARR	= -80;
  BORDER = lightgray;

var
  Interval, Level: byte;
  LinesComplete: word;
  Points: longint;

procedure FullPort;
begin
  SetViewPort(0, 0, getmaxx, getmaxy, ClipOn);
end;

procedure GamePort;
begin
  SetViewPort(209, 40, 418, 441, ClipOn);
end;

procedure NextPort;
begin
  SetViewPort(480, 80, 562, 182, ClipOn);
  ClearViewPort;
end;

procedure ScorePort;
begin
  SetViewPort(40, 80, 160, 107, ClipOn);
  ClearViewPort;
end;

procedure LinesPort;
begin
  SetViewPort(40, 180, 160, 207, ClipOn);
  ClearViewPort;
end;

procedure LevelPort;
begin
  SetViewPort(40, 280, 160, 327, ClipOn);
  ClearViewPort;
end;

procedure DeleteRow(Row: byte);
var
  i, j: byte;
begin
  inc(LinesComplete);
  for	i := Row to HighestLevel do
    for j := 1 to 10 do begin
    	Screen[i,j] := Screen[i + 1,j];
      Out(j, i, Screen[i,j]);
    end;
  for j := 1 to 10 do begin
  	Screen[i,j] := black;
    Out(j, i, Screen[i,j]);
  end;
end;

procedure CheckForFinished;

  procedure NewLevel;
  var
    LevelStr: string;
  begin
    inc(Level);
    LevelPort;
    str(Level, LevelStr);
    settextstyle(gothicfont, horizdir, 5);
    outtextxy(60, 17, LevelStr);
    settextstyle(gothicfont, horizdir, 3);
    GamePort;
  end;

var
  i, j, RowsDeleted: byte;
  Full: boolean;
  LinesStr: string;
begin
  RowsDeleted := 0;
  for i := SCREENSIZE downto 1 do begin
    Full := TRUE;
    j := 1;
    repeat
      Full := Screen[i,j] <> black;
      inc(j);
    until ((Full = FALSE) OR (j > 10));
    if (Full) then begin
      DeleteRow(i);
      inc(RowsDeleted);
    end;
  end;
  if RowsDeleted > 0 then begin
    LinesPort;
    str(LinesComplete, LinesStr);
    setcolor(white);
    outtextxy(60, 10, LinesStr);
    case RowsDeleted of
      1: inc(Points, 100 + Level * 25);
      2: inc(Points, 400 + Level * 50);
      3: inc(Points, 800 + Level * 100);
      4: inc(Points, 1600 + Level * 200);
    end;
    if LinesComplete >= (Level + 1) * 10 then
      NewLevel;
  end;
end;

procedure Game;

  procedure InitGameScreen;
  var
    i: integer;
    Square: array[1..4] of pointtype;
  begin
    Square[1].X := 199;
    Square[1].Y := 20;
    Square[2].X := Square[1].X;
    Square[2].Y := Square[1].Y + 441;
    Square[3].X := Square[1].X + 240;
    Square[3].Y := Square[2].Y;
    Square[4].X := Square[3].X;
    Square[4].Y := Square[1].Y;
    setlinestyle(solidln, 0, normwidth);
    setfillstyle(solidfill, BORDER);
    setcolor(BORDER);
    fillpoly(4, Square);
    inc(Square[1].X, 20);
    inc(Square[1].Y, 20);
    inc(Square[2].X, 20);
    dec(Square[2].Y, 20);
    dec(Square[3].X, 20);
    dec(Square[3].Y, 20);
    dec(Square[4].X, 20);
    inc(Square[4].Y, 20);
    setfillstyle(solidfill, black);
    setcolor(black);
    fillpoly(4, Square);
    Square[1].X := 470;
    Square[1].Y := 50;
    Square[2].X := Square[1].X;
    Square[2].Y := Square[1].Y + 142;
    Square[3].X := Square[1].X + 102;
    Square[3].Y := Square[2].Y;
    Square[4].X := Square[3].X;
    Square[4].Y := Square[1].Y;
    setlinestyle(solidln, 0, normwidth);
    setfillstyle(solidfill, BORDER);
    setcolor(BORDER);
    fillpoly(4, Square);
    inc(Square[1].X, 10);
    inc(Square[1].Y, 10);
    inc(Square[2].X, 10);
    dec(Square[2].Y, 10);
    dec(Square[3].X, 10);
    dec(Square[3].Y, 10);
    dec(Square[4].X, 10);
    inc(Square[4].Y, 10);
    setfillstyle(solidfill, black);
    setcolor(black);
    fillpoly(4, Square);
    settextjustify(centertext, centertext);
    settextstyle(gothicfont, horizdir, 3);
    setcolor(white);
    outtextxy(521, 67, 'Next');
    Square[1].X := 30;
    Square[1].Y := 50;
    Square[2].X := Square[1].X;
    Square[2].Y := Square[1].Y + 68;
    Square[3].X := Square[1].X + 140;
    Square[3].Y := Square[2].Y;
    Square[4].X := Square[3].X;
    Square[4].Y := Square[1].Y;
    setlinestyle(solidln, 0, normwidth);
    setfillstyle(solidfill, BORDER);
    setcolor(BORDER);
    fillpoly(4, Square);
    inc(Square[1].X, 10);
    inc(Square[1].Y, 10);
    inc(Square[2].X, 10);
    dec(Square[2].Y, 10);
    dec(Square[3].X, 10);
    dec(Square[3].Y, 10);
    dec(Square[4].X, 10);
    inc(Square[4].Y, 10);
    setfillstyle(solidfill, black);
    setcolor(black);
    fillpoly(4, Square);
    setcolor(white);
    outtextxy(100, 67, 'Score');
    Square[1].X := 30;
    Square[1].Y := 150;
    Square[2].X := Square[1].X;
    Square[2].Y := Square[1].Y + 68;
    Square[3].X := Square[1].X + 140;
    Square[3].Y := Square[2].Y;
    Square[4].X := Square[3].X;
    Square[4].Y := Square[1].Y;
    setlinestyle(solidln, 0, normwidth);
    setfillstyle(solidfill, BORDER);
    setcolor(BORDER);
    fillpoly(4, Square);
    inc(Square[1].X, 10);
    inc(Square[1].Y, 10);
    inc(Square[2].X, 10);
    dec(Square[2].Y, 10);
    dec(Square[3].X, 10);
    dec(Square[3].Y, 10);
    dec(Square[4].X, 10);
    inc(Square[4].Y, 10);
    setfillstyle(solidfill, black);
    setcolor(black);
    fillpoly(4, Square);
    setcolor(white);
    outtextxy(100, 167, 'Lines');
    Square[1].X := 30;
    Square[1].Y := 250;
    Square[2].X := Square[1].X;
    Square[2].Y := Square[1].Y + 88;
    Square[3].X := Square[1].X + 140;
    Square[3].Y := Square[2].Y;
    Square[4].X := Square[3].X;
    Square[4].Y := Square[1].Y;
    setlinestyle(solidln, 0, normwidth);
    setfillstyle(solidfill, BORDER);
    setcolor(BORDER);
    fillpoly(4, Square);
    inc(Square[1].X, 10);
    inc(Square[1].Y, 10);
    inc(Square[2].X, 10);
    dec(Square[2].Y, 10);
    dec(Square[3].X, 10);
    dec(Square[3].Y, 10);
    dec(Square[4].X, 10);
    inc(Square[4].Y, 10);
    setfillstyle(solidfill, black);
    setcolor(black);
    fillpoly(4, Square);
    setcolor(white);
    outtextxy(100, 267, 'Level');
  end;

var
  Key: integer;
  NextBlock, DropLevel: byte;
  Quit, Done, DownOK, Dropped: boolean;
  LastTime, CurTime: word;
  PointStr: string;
  B, N: block;
begin
  Done := FALSE;
  Quit := FALSE;
  ColorArray[1] := white;
  ColorArray[2] := red;
  ColorArray[3] := lightblue;
  randseed := GetLTime;
  HighestLevel := 0;
  LinesComplete := 0;
  Level := 0;
  Points := 0;
  Interval := 50;
  InitScreen;
  InitGameScreen;
  NextBlock := random(7);
  LastTime := GetTimeSec;

  ScorePort;
  outtextxy(60, 10, '0');
  LinesPort;
  outtextxy(60, 10, '0');
  LevelPort;
  settextstyle(gothicfont, horizdir, 5);
  outtextxy(60, 17, '0');
  settextstyle(gothicfont, horizdir, 3);
  GamePort;

  while	NOT (Done OR Quit) do begin
    if NOT B.Init(NextBlock) then
      Done := TRUE;
    Dropped := FALSE;
    NextPort;
    NextBlock := random(7);
    N.Init(NextBlock + 7);
    GamePort;

    DownOK := TRUE;
    while DownOK AND NOT (Done OR Quit) do begin
      if keypressed then begin
        Key := GetKeyCmd;
        case Key of
          SPACE: B.Rotate;
          RARR:  B.MoveRt;
 	        LARR:  B.MoveLt;
 	        DARR:  begin
                   Dropped := TRUE;
                   DropLevel := B.GetLevel;
                   repeat
                     DownOK := B.MoveDn;
                   until NOT DownOK;
                 end;
          ESC:   Quit := TRUE;
        end;
      end;
      Done := NOT B.CheckOK;
      CurTime := GetTimeSec;
      if NOT Done AND ((CurTime > LastTime + (Interval - Level * 4)) OR
             (CurTime < LastTime) AND
             (CurTime + 6000 > LastTime + (Interval - Level * 4))) then begin
        DownOK := B.MoveDn;
        LastTime := CurTime;
      end;
    end;
    B.BlockToScreen;
    if NOT Dropped then
      DropLevel := B.GetLevel;
    inc(Points, DropLevel * 5 + Level * 10);
    CheckForFinished;
    ScorePort;
    str(Points, PointStr);
    setcolor(white);
    outtextxy(60, 10, PointStr);
    GamePort;
  end;
end;

procedure LoadGraphDriver;
var
 grDriver, grMode, ErrCode: integer;
 BGIFilesLocation: string;
begin
  if paramcount < 1 then
    BGIFilesLocation := ''
  else
    BGIFilesLocation := paramstr(1);
  grDriver := VGA;
  grMode := VGAHi;
  InitGraph(grDriver, grMode, BGIFilesLocation);
  ErrCode := graphresult;
  if ErrCode <> grOk then begin
    Writeln('Graphics error: ', GraphErrorMsg(ErrCode));
    halt(1);
  end;
  setcolor(black);
  setbkcolor(black);
end;


begin
  LoadGraphDriver;
  Game;
  closegraph;
end.