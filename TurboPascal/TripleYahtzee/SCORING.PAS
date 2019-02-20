{by Jay French}
unit Scoring;

interface

uses
  crt, graph, GraphDie, HelpUnit;

const
  F1   = -59;
  DA   = -80;
  RA   = -77;
  LA   = -75;
  UA   = -72;
  BACK =   8;
  RET  =  13;
  ON   =  49;
  TW   =  50;
  TH   =  51;
  FR   =  52;
  FV   =  53;
  SX   =  54;
  B    =  66;
  C    =  67;
  F    =  70;
  H    =  72;
  K    =  75;
  L    =  76;
  N    =  78;
  Q    =  81;
  R    =  82;
  S    =  83;
  T    =  84;
  Y    =  89;

type

  TGame = object
    UpperArray : array[1..6] of shortint;
    LowerArray : array[1..7] of shortint;
    TotalScore: word;
    constructor Init;
    function Total: byte;
    function Bonus: byte;
    function UpperTotal: byte;
    function LowerTotal: word;
    function CombinedTotal: word;
  end;

  TValArray = array[1..5] of byte;
  TCountArray = array[1..6] of byte;

  TSection = object
    Games : array[1..3] of TGame;
    PNumber: byte;
    constructor Init;
    procedure FindTotalScore;
    function GrandTotal: word;
    procedure Score(ValArray: TValArray; var Scored, MustScore: boolean);
    procedure Insert(index, ScoreValue: byte);
    destructor Done;
  end;

  procedure WriteScore(X, Y, Value, Color: integer);
  procedure SetMenuPort;
  procedure SetRollPort;
  procedure SetScorePort;
  procedure SetPlayerPort;
  procedure ResetScreen;
  function Yes: boolean;


implementation

constructor TGame.Init;
var
  i: byte;
begin
  for i := 1 to 6 do
    UpperArray[i] := -1;
  for i := 1 to 7 do
    LowerArray[i] := -1;
end;

function TGame.Total: byte;
var
  TempTotal, i: byte;
begin
  TempTotal := 0;
  for i := 1 to 6 do
    if UpperArray[i] > 0 then
      TempTotal := TempTotal + UpperArray[i];
  Total := TempTotal;
end;

function TGame.Bonus: byte;
begin
  if Total >= 63 then
    Bonus := 35
  else
    Bonus := 0;
end;

function TGame.UpperTotal: byte;
begin
  UpperTotal := Total + Bonus;
end;

function TGame.LowerTotal: word;
var
  TempTotal, i: byte;
begin
  TempTotal := 0;
  for i := 1 to 7 do
    if LowerArray[i] > 0 then
      TempTotal := TempTotal + LowerArray[i];
  LowerTotal := TempTotal;
end;

function TGame.CombinedTotal: word;
begin
  CombinedTotal := UpperTotal + LowerTotal;
end;

{-------------------------------------------------}

constructor TSection.Init;
var
  i: byte;
begin
  for i := 1 to 3 do
    Games[i].Init;
  FindTotalScore;
end;

procedure TSection.FindTotalScore;
var
  i: byte;
begin
  for i := 1 to 3 do
    Games[i].TotalScore := Games[i].CombinedTotal * i;
end;

function TSection.GrandTotal: word;
begin
  GrandTotal := Games[1].TotalScore + Games[2].TotalScore + Games[3].TotalScore;
end;

{-------------------------------------------------}

procedure Sort(var ValArray: TValArray);
var
  i, j, Temp: byte;
begin
  for i := 1 to 4 do
    for j := 4 downto 1 do
      if ValArray[j] > ValArray[j+1] then begin
        Temp := ValArray[j];
        ValArray[j] := ValArray[j+1];
        ValArray[j+1] := Temp;
      end;
end;

function Chance(ValArray: TValArray): byte;
begin
  Chance := ValArray[1] + ValArray[2] + ValArray[3] + ValArray[4] +
                ValArray[5];
end;

function Ones(ValArray: TValArray): byte;
var
  i, Count: byte;
begin
  Count := 0;
  for i := 1 to 5 do
    if ValArray[i] = 1 then
      inc(Count);
  Ones := Count;
end;

function Twos(ValArray: TValArray): byte;
var
  i, Count: byte;
begin
  Count := 0;
  for i := 1 to 5 do
    if ValArray[i] = 2 then
      inc(Count,2);
  Twos := Count;
end;

function Threes(ValArray: TValArray): byte;
var
  i, Count: byte;
begin
  Count := 0;
  for i := 1 to 5 do
    if ValArray[i] = 3 then
      inc(Count,3);
  Threes := Count;
end;

function Fours(ValArray: TValArray): byte;
var
  i, Count: byte;
begin
  Count := 0;
  for i := 1 to 5 do
    if ValArray[i] = 4 then
      inc(Count,4);
  Fours := Count;
end;

function Fives(ValArray: TValArray): byte;
var
  i, Count: byte;
begin
  Count := 0;
  for i := 1 to 5 do
    if ValArray[i] = 5 then
      inc(Count,5);
  Fives := Count;
end;

function Sixes(ValArray: TValArray): byte;
var
  i, Count: byte;
begin
  Count := 0;
  for i := 1 to 5 do
    if ValArray[i] = 6 then
      inc(Count,6);
  Sixes := Count;
end;

function ThreeOAK(ValArray: TValArray): byte;
var
  CountArray: TCountArray;
  i: byte;
begin
  for i := 1 to 6 do
    CountArray[i] := 0;
  for i := 1 to 5 do
    inc(CountArray[ValArray[i]]);
  for i := 1 to 6 do
    if CountArray[i] >= 3 then begin
      ThreeOAK := Chance(ValArray);
      exit;
    end;
  ThreeOAK := 0;
end;

function FourOAK(ValArray: TValArray): byte;
var
  CountArray: TCountArray;
  i: byte;
begin
  for i := 1 to 6 do
    CountArray[i] := 0;
  for i := 1 to 5 do
    inc(CountArray[ValArray[i]]);
  for i := 1 to 6 do
    if CountArray[i] >= 4 then begin
      FourOAK := Chance(ValArray);
      exit;
    end;
  FourOAK := 0;
end;

function FullHouse(ValArray: TValArray): byte;
var
  i, j: byte;
  CountArray: TCountArray;
begin
  FullHouse := 25;
  for i := 1 to 6 do
    CountArray[i] := 0;
  for i := 1 to 5 do
    inc(CountArray[ValArray[i]]);
  for i := 1 to 6 do
    if CountArray[i] = 3 then
      for j := 1 to 6 do
        if CountArray[j] = 2 then
          exit;
  FullHouse := 0;
end;

function SmStrt(ValArray: TValArray): byte;
var
  i, InARow: byte;
begin
  SmStrt := 30;
  Sort(ValArray);
  InARow := 1;
  for i := 2 to 5 do
    if ValArray[i] = ValArray[i-1] + 1 then begin
      inc(InARow);
      if InARow = 4 then
        exit;
    end else
      if ValArray[i] <> ValArray[i-1] then
        InARow := 1;
  SmStrt := 0;
end;

function LgStrt(ValArray: TValArray): byte;
var
  i: byte;
begin
  LgStrt := 0;
  Sort(ValArray);
  for i := 2 to 5 do
    if ValArray[i] <> ValArray[i-1] + 1 then
      exit;
  LgStrt := 40;
end;

function Yahtzee(ValArray: TValArray): byte;
var
  i: byte;
begin
  Yahtzee := 0;
  for i := 2 to 5 do
    if ValArray[i] <> ValArray[i-1] then
      exit;
  Yahtzee := 50;
end;

{-------------------------------------}

procedure WriteScore(X, Y, Value, Color: integer);
var
  OutStr: string;
begin
  SetScorePort;
  str(Value, OutStr);
  SetColor(Color);
  OutTextXY(X, Y, OutStr);
  SetColor(White);
end;


procedure TSection.Insert(index, ScoreValue: byte);
var
  X, Y: integer;
  i: byte;
begin
  SetTextJustify(RightText, BottomText);
  SetScorePort;
  if PNumber = 1 then
    X := 105
  else
    X := 208;
  if index < 7 then begin
    Y := ((13 + (index * 2)) * 8) + 1;
    for i := 1 to 3 do
      if Games[i].UpperArray[index] < 0 then begin
        inc(X,(32 * i));
        if i = 3 then
          inc(X,8);
        WriteScore(X, Y, ScoreValue, White);
        WriteScore(X, 216, Games[i].Total, Black);
        Games[i].UpperArray[index] := ScoreValue;
        WriteScore(X, 216, Games[i].Total, White);
        SetTextJustify(LeftText, BottomText);
        exit;
      end;
  end;
  dec(index,6);
  Y := ((33 + (index * 2)) * 8 + 1);
  for i := 1 to 3 do
    if Games[i].LowerArray[index] < 0 then begin
      inc(X,(32 * i));
      if i = 3 then
        inc(X,8);
      WriteScore(X, Y, ScoreValue, White);
      Games[i].LowerArray[index] := ScoreValue;
      SetTextJustify(LeftText, BottomText);
      exit;
    end;
end;

procedure TSection.Score(ValArray: TValArray; var Scored, MustScore: boolean);

  procedure ShowScoreMenu;
  begin
    SetMenuPort;
    ClearViewPort;
    SetColor(White);
    SetTextStyle(0,0,1);
    OutTextLn('');
    OutTextLn('F1    Help');                  OutTextSpc;
    OutTextLn('1     Count & Add Only 1''s'); OutTextSpc;
    OutTextLn('2     Count & Add Only 2''s'); OutTextSpc;
    OutTextLn('3     Count & Add Only 3''s'); OutTextSpc;
    OutTextLn('4     Count & Add Only 4''s'); OutTextSpc;
    OutTextLn('5     Count & Add Only 5''s'); OutTextSpc;
    OutTextLn('6     Count & Add Only 6''s'); OutTextSpc;
    OutTextLn('T     Three Of A Kind');       OutTextSpc;
    OutTextLn('F     Four Of A Kind');        OutTextSpc;
    OutTextLn('H     Full House');            OutTextSpc;
    OutTextLn('S     Small Straight');        OutTextSpc;
    OutTextLn('L     Large Straight');        OutTextSpc;
    OutTextLn('Y     YAHTZEE');               OutTextSpc;
    OutTextLn('C     Chance');                OutTextSpc;
    OutTextLn('Q     Quit Scoring');          OutTextSpc;
  end;

  procedure IsOK(Value: byte; var ScoreStr: string);
  begin
    str(Value, ScoreStr);
    OutTextXY(125,65,ScoreStr);
    OutTextXY(55,80,'Is This O.K.? (Y/N)');
  end;

  procedure Sorry;
  begin
    OutTextXY(30,50,'That Row Is Already Filled!');
    Beep;
    ShowScoreMenu;
  end;

var
  ScoreValue, i: byte;
  Quit: boolean;
  ScoreStr: string;
begin
  Quit := FALSE;
  ShowScoreMenu;
  repeat
    case GetKeyCmd of
      F1 : begin
             ScoreMenuHelp;
             ShowScoreMenu;
           end;
      ON : begin
             ClearViewPort;
             if Games[3].UpperArray[1] > -1 then
               Sorry
             else begin
               OutTextXY(50,50,'In Aces You Will Get:');
               ScoreValue := Ones(ValArray);
               IsOK(ScoreValue, ScoreStr);
               if Yes then begin
                 Insert(1, ScoreValue);
                 Scored := TRUE;
               end else
                 ShowScoreMenu;
             end;
           end;
      ALT1 : begin
               OnesHelp;
               ShowScoreMenu;
             end;
      TW : begin
             ClearViewPort;
             if Games[3].UpperArray[2] > -1 then
               Sorry
             else begin
               OutTextXY(50,50,'In Twos You Will Get:');
               ScoreValue := Twos(ValArray);
               IsOK(ScoreValue, ScoreStr);
               if Yes then begin
                 Insert(2, ScoreValue);
                 Scored := TRUE;
               end else
                 ShowScoreMenu;
             end;
           end;
      ALT2 : begin
               TwosHelp;
               ShowScoreMenu;
             end;
      TH : begin
             ClearViewPort;
             if Games[3].UpperArray[3] > -1 then
               Sorry
             else begin
               OutTextXY(45,50,'In Threes You Will Get:');
               ScoreValue := Threes(ValArray);
               IsOK(ScoreValue, ScoreStr);
               if Yes then begin
                 Insert(3, ScoreValue);
                 Scored := TRUE;
               end else
                 ShowScoreMenu;
             end;
           end;
      ALT3 : begin
               ThreesHelp;
               ShowScoreMenu;
             end;
      FR : begin
             ClearViewPort;
             if Games[3].UpperArray[4] > -1 then
               Sorry
             else begin
               OutTextXY(47,50,'In Fours You Will Get:');
               ScoreValue := Fours(ValArray);
               IsOK(ScoreValue, ScoreStr);
               if Yes then begin
                 Insert(4, ScoreValue);
                 Scored := TRUE;
               end else
                 ShowScoreMenu;
             end;
           end;
      ALT4 : begin
               FoursHelp;
               ShowScoreMenu;
             end;
      FV : begin
             ClearViewPort;
             if Games[3].UpperArray[5] > -1 then
               Sorry
             else begin
               OutTextXY(47,50,'In Fives You Will Get:');
               ScoreValue := Fives(ValArray);
               IsOK(ScoreValue, ScoreStr);
               if Yes then begin
                 Insert(5, ScoreValue);
                 Scored := TRUE;
               end else
                 ShowScoreMenu;
             end;
           end;
      ALT5 : begin
               FivesHelp;
               ShowScoreMenu;
             end;
      SX : begin
             ClearViewPort;
             if Games[3].UpperArray[6] > -1 then
               Sorry
             else begin
               OutTextXY(47,50,'In Sixes You Will Get:');
               ScoreValue := Sixes(ValArray);
               IsOK(ScoreValue, ScoreStr);
               if Yes then begin
                 Insert(6, ScoreValue);
                 Scored := TRUE;
               end else
                 ShowScoreMenu;
             end;
           end;
      ALT6 : begin
               SixesHelp;
               ShowScoreMenu;
             end;
      T : begin
            ClearViewPort;
            if Games[3].LowerArray[1] > -1 then
              Sorry
            else begin
              OutTextXY(8,50,'For Three Of A Kind You Will Get:');
              ScoreValue := ThreeOAK(ValArray);
              IsOK(ScoreValue, ScoreStr);
              if Yes then begin
                Insert(7, ScoreValue);
                Scored := TRUE;
              end else
                ShowScoreMenu;
            end;
          end;
      ALTT : begin
               TOAKHelp;
               ShowScoreMenu;
             end;
      F : begin
            ClearViewPort;
            if Games[3].LowerArray[2] > -1 then
              Sorry
            else begin
              OutTextXY(8,50,'For Four Of A Kind You Will Get:');
              ScoreValue := FourOAK(ValArray);
              IsOK(ScoreValue, ScoreStr);
              if Yes then begin
                Insert(8, ScoreValue);
                Scored := TRUE;
              end else
                ShowScoreMenu;
            end;
          end;
      ALTF : begin
               FOAKHelp;
               ShowScoreMenu;
             end;
      H : begin
            ClearViewPort;
            if Games[3].LowerArray[3] > -1 then
              Sorry
            else begin
              OutTextXY(16,50,'For A Full House You Will Get:');
              ScoreValue := FullHouse(ValArray);
              IsOK(ScoreValue, ScoreStr);
              if Yes then begin
                Insert(9, ScoreValue);
                Scored := TRUE;
              end else
                ShowScoreMenu;
            end;
          end;
      ALTH : begin
               FullHelp;
               ShowScoreMenu;
             end;
      S : begin
            ClearViewPort;
            if Games[3].LowerArray[4] > -1 then
              Sorry
            else begin
              OutTextXY(0,50,'For A Small Straight You Will Get:');
              ScoreValue := SmStrt(ValArray);
              IsOK(ScoreValue, ScoreStr);
              if Yes then begin
                Insert(10, ScoreValue);
                Scored := TRUE;
              end else
                ShowScoreMenu;
            end;
          end;
      ALTS : begin
               SmallHelp;
               ShowScoreMenu;
             end;
      L : begin
            ClearViewPort;
            if Games[3].LowerArray[5] > -1 then
              Sorry
            else begin
              OutTextXY(0,50,'For A Large Straight You Will Get:');
              ScoreValue := LgStrt(ValArray);
              IsOK(ScoreValue, ScoreStr);
              if Yes then begin
                Insert(11, ScoreValue);
                Scored := TRUE;
              end else
                ShowScoreMenu;
            end;
          end;
      ALTL : begin
               LargeHelp;
               ShowScoreMenu;
             end;
      Y : begin
            ClearViewPort;
            if Games[3].LowerArray[6] > -1 then
              Sorry
            else begin
              OutTextXY(41,50,'In Yahtzee You Will Get:');
              ScoreValue := Yahtzee(ValArray);
              IsOK(ScoreValue, ScoreStr);
              if Yes then begin
                Insert(12, ScoreValue);
                Scored := TRUE;
              end else
                ShowScoreMenu;
            end;
          end;
      ALTY : begin
               YtzeeHelp;
               ShowScoreMenu;
             end;
      C : begin
            ClearViewPort;
            if Games[3].LowerArray[7] > -1 then
              Sorry
            else begin
              OutTextXY(45,50,'In Chance You Will Get:');
              ScoreValue := Chance(ValArray);
              IsOK(ScoreValue, ScoreStr);
              if Yes then begin
                Insert(13, ScoreValue);
                Scored := TRUE;
              end else
                ShowScoreMenu;
            end;
          end;
      ALTC : begin
               ChanceHelp;
               ShowScoreMenu;
             end;
      Q  : if MustScore then begin
             ClearViewPort;
             OutTextXY(30,100,'You Can''t Quit Right Now!');
             Beep;
             delay(1200);
             ClearViewPort;
             ShowScoreMenu;
           end else
             Quit := TRUE;
      ALTQ : begin
               QuitScorHelp;
               ShowScoreMenu;
             end;
      else
        Beep;
    end;
  until Quit or Scored;
end;

destructor TSection.Done;
var
  X: integer;
  i: byte;
begin
  SetTextJustify(RightText, BottomText);
  FindTotalScore;
  if PNumber = 1 then
    X := 105
  else
    X := 208;
  for i := 1 to 3 do begin
    inc(X,32);
    if i = 3 then
      inc(X,8);
    WriteScore(X,232,Games[i].Bonus, White);
    WriteScore(X,248,Games[i].UpperTotal, White);
    WriteScore(X,392,Games[i].LowerTotal, White);
    WriteScore(X,408,Games[i].UpperTotal, White);
    WriteScore(X,424,Games[i].CombinedTotal, White);
    WriteScore(X,456,Games[i].TotalScore, White);
  end;
  if PNumber = 1 then
    X := 209
  else
    X := 312;
  WriteScore(X,472,GrandTotal, White);
  SetTextJustify(LeftText, BottomText);
end;

{--------------------------------------------------------}
{ Set the Menu Port                                      }
{--------------------------------------------------------}
procedure SetMenuPort;

begin
  SetViewPort(0,21,GetMaxX-320,GetMaxY-160,ClipOn);
end;

{--------------------------------------------------------}
{ Set the Roll Port                                      }
{--------------------------------------------------------}
procedure SetRollPort;

begin
  SetViewPort(20,GetMaxY-159,GetMaxX-320,GetMaxY,ClipOn);
end;

{--------------------------------------------------------}
{ Set the Score Port                                     }
{--------------------------------------------------------}
procedure SetScorePort;

begin
  SetViewPort(GetMaxX-319,0,GetMaxX,GetMaxY,ClipOn);
end;

procedure SetPlayerPort;
begin
  SetViewPort(0,0,GetMaxX-320,20,ClipOn);
end;

procedure ResetScreen;
begin
  SetViewPort(0,0,GetMaxX,GetMaxY,ClipOff);
  ClearViewPort;
end;

function Yes: boolean;
var
  Ys: boolean;
begin
  Yes := FALSE;
  Ys := FALSE;
  repeat
    case GetKeyCmd of
      Y  : Ys := TRUE;
      N  : exit;
      else
        Beep;
    end;
  until Ys;
  Yes := YS;
end;


{ No Initialization }

end.