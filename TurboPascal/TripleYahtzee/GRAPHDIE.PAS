{Dice unit by Jay French}
unit GraphDie;

interface

uses
  graph, crt;

const
  BACKGROUND = Black;

type

  PDiePtr = ^TDie;
  TDie = object
    X1, Y1, X2, Y2: integer;
    Value: byte;
    WhichDie: byte;
    Keeping: boolean;
    constructor Init(i: byte);
    destructor Done;
    procedure Roll;
    procedure Show;
    function GetValue: byte;
  end;

  function GetKeyCmd : integer;
  procedure OutTextLn(TheText: string);
  procedure DrawBorder(X,Y: integer; Color: byte);
  procedure OutTextSpc;
  function OpenGraph(Path: string): boolean;


implementation

function GetKeyCmd : integer;
var
  KeyValue : integer;
begin
  KeyValue := ord(UpCase(ReadKey));
  if ord(KeyValue) = 0 then begin
    KeyValue := 0 - ord(ReadKey);
  end;
  GetKeyCmd := KeyValue
end;

procedure OutTextLn(TheText: String);
begin
  OutText(TheText);
  MoveTo(0, GetY+8);
end;

procedure OutTextSpc;
begin
  MoveTo(0, GetY+2);
end;

procedure DrawBorder(X,Y: integer; Color: byte);
var
  i: byte;
begin
  SetColor(Color);
  for i := 1 to 5 do
    Rectangle(X-i, Y-i, X+65+i, Y+60+i);
  SetColor(White);
end;

function OpenGraph(Path: string): boolean;
var
  GraphDriver, GraphMode : integer;
begin
  OpenGraph := TRUE;
  DetectGraph(GraphDriver, GraphMode);
  InitGraph(GraphDriver, GraphMode, Path);
  if GraphResult <> grOk then
    OpenGraph := FALSE;
end;


constructor TDie.Init(i: byte);
begin
  Keeping := FALSE;
  WhichDie := i;
  if WhichDie < 3 then begin
    X1 := 10;
    Y1 := -70 + 80*WhichDie;
  end else if WhichDie < 5 then begin
    X1 := 95;
    Y1 := -70 + 80*(WhichDie-2);
  end else begin
    X1 := 180;
    Y1 := 90;
  end;
  X2 := X1+65;
  Y2 := Y1+60;
end;

destructor TDie.Done;
begin
end;

procedure TDie.Roll;
begin
  if not Keeping then begin
    Value := random(6) + 1;
    Show;
  end;
end;

procedure TDie.Show;

  procedure FillDie;
  var
    RecPoints : array[1..4] of PointType;
    i, j : integer;
  begin
    with RecPoints[1] do begin
      x := X1;
      y := Y1;
    end;
    with RecPoints[2] do begin
      x := X2;
      y := Y1;
    end;
    with RecPoints[3] do begin
      x := X2;
      y := Y2;
    end;
    with RecPoints[4] do begin
      x := X1;
      y := Y2;
    end;
    FillPoly(4,RecPoints);
    for i := 0 to 1 do begin
      PutPixel(X1+i,Y1,BACKGROUND);
      PutPixel(X2-i,Y1,BACKGROUND);
      PutPixel(X1+i,Y2,BACKGROUND);
      PutPixel(X2-i,Y2,BACKGROUND);
    end;
    PutPixel(X1,Y1+1,BACKGROUND);
    PutPixel(X2,Y1+1,BACKGROUND);
    PutPixel(X1,Y2-1,BACKGROUND);
    PutPixel(X2,Y2-1,BACKGROUND);
  end;

var
  DieColor: byte;

  procedure PutDot(X,Y : integer);
  begin
    SetFillStyle(1,BACKGROUND);
    FillEllipse(X, Y , 5, 5);
    SetFillStyle(1,DieColor);
  end;

begin
  if Keeping then
    DieColor := LightGray
  else
    DieColor := White;
  SetBkColor(BACKGROUND);
  SetColor(DieColor);
  SetFillStyle(1,DieColor);
  FillDie;
  case GetValue of
    1 : PutDot((X1+X2) div 2,(Y1+Y2) div 2);
    2 : begin
          PutDot((((X1+X2) div 2)+X1) div 2,(((Y1+Y2) div 2)+Y1) div 2);
          PutDot((((X1+X2) div 2)+X2) div 2,(((Y1+Y2) div 2)+Y2) div 2);
        end;
    3 : begin
          PutDot((((X1+X2) div 2)+X1) div 2,(((Y1+Y2) div 2)+Y1) div 2);
          PutDot((X1+X2) div 2,(Y1+Y2) div 2);
          PutDot((((X1+X2) div 2)+X2) div 2,(((Y1+Y2) div 2)+Y2) div 2);
        end;
    4 : begin
          PutDot((((X1+X2) div 2)+X1) div 2,(((Y1+Y2) div 2)+Y1) div 2);
          PutDot((((X1+X2) div 2)+X2) div 2,(((Y1+Y2) div 2)+Y1) div 2);
          PutDot((((X1+X2) div 2)+X1) div 2,(((Y1+Y2) div 2)+Y2) div 2);
          PutDot((((X1+X2) div 2)+X2) div 2,(((Y1+Y2) div 2)+Y2) div 2);
        end;
    5 : begin
          PutDot((((X1+X2) div 2)+X1) div 2,(((Y1+Y2) div 2)+Y1) div 2);
          PutDot((((X1+X2) div 2)+X2) div 2,(((Y1+Y2) div 2)+Y1) div 2);
          PutDot((X1+X2) div 2,(Y1+Y2) div 2);
          PutDot((((X1+X2) div 2)+X1) div 2,(((Y1+Y2) div 2)+Y2) div 2);
          PutDot((((X1+X2) div 2)+X2) div 2,(((Y1+Y2) div 2)+Y2) div 2);
        end;
    6 : begin
          PutDot((((X1+X2) div 2)+X1) div 2,(((Y1+Y2) div 2)+Y1) div 2);
          PutDot((((X1+X2) div 2)+X2) div 2,(((Y1+Y2) div 2)+Y1) div 2);
          PutDot((((X1+X2) div 2)+X1) div 2,(Y1+Y2) div 2);
          PutDot((((X1+X2) div 2)+X2) div 2,(Y1+Y2) div 2);
          PutDot((((X1+X2) div 2)+X1) div 2,(((Y1+Y2) div 2)+Y2) div 2);
          PutDot((((X1+X2) div 2)+X2) div 2,(((Y1+Y2) div 2)+Y2) div 2);
        end;
  end;
  SetColor(White);
end;

function TDie.GetValue: byte;
begin
  GetValue := Value;
end;

begin
  Randomize;
end.