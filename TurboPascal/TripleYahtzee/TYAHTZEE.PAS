{by Jay French}
program TripleYahtzee;

uses
  CRT, GRAPH, GraphDie, Scoring, Stringer, Endings, HelpUnit;

const
  BORDER = LightBlue;
  NOBORDER = Black;
  COLOR = LightRed;

type
  DirType = (Right,Left,Up,Down);

  NodePtr = ^Node;
  Node = record
    DiePtr: PDiePtr;
    Next: NodePtr;
    Prev: NodePtr;
  end;

  ListPtr = ^List;
  List = object
    Head : NodePtr;
    Tail : NodePtr;
    Curr : NodePtr;
    constructor Init;
    destructor Done; virtual;
    procedure Next;
    procedure Prev;
    procedure ChangeDie(Dir: DirType);
    procedure RollDice;
    procedure Keep;
    procedure GetValArray(var ValArray: TValArray);
    procedure UnKeep;
  end;

  Player = object
    Name: string;
    Section: TSection;
    WhichPlayer: byte;
    constructor Init(PlayerNo: byte);
    procedure TakeTurn(AList: List; var Quit: boolean);
    destructor Done;
  end;


{--------------------------------------------------------}
{ List's method implementations:                         }
{--------------------------------------------------------}
constructor List.Init;

  procedure Add(DiePtr: PDiePtr);
  var
    N: NodePtr;
  begin
    New(N);
    N^.DiePtr := DiePtr;
    N^.Next := Head;
    N^.Prev := nil;
    if N^.Next <> nil then
      N^.Next^.Prev := N
    else
      Tail := N;
    if Curr = nil then
      Curr := N;
    Head := N;
  end;

var
  i: byte;

begin
  Head := nil;
  Tail := nil;
  Curr := nil;
  for i := 1 to 5 do
    Add(New(PDiePtr, Init(i)));
  SetRollPort;
  DrawBorder(10, 10, BORDER);
end;

{--------------------------------------------------------}
{ Destroy list by freeing up all the memory it used      }
{--------------------------------------------------------}
destructor List.Done;
var
  N: NodePtr;
begin
  while Head <> nil do
  begin
    N := Head;
    Head := N^.Next;
    Dispose(N^.DiePtr, Done);
    Dispose(N);
  end;
end;

{--------------------------------------------------------}
{ Show the menu                                          }
{--------------------------------------------------------}
procedure ShowMenu;
begin
  SetMenuPort;
  ClearViewPort;
  SetTextStyle(0,0,1);
  OutTextLn('');
  OutTextLn('F1     Help');                          OutTextSpc;
  OutTextLn('K      Keep/Roll Current Die');         OutTextSpc;
  OutTextLn('S      Score Dice (Done Rolling)');     OutTextSpc;
  OutTextLn('R      Roll Dice (Done Selecting)');    OutTextSpc;
  OutTextLn('       Make The Next Die Current');     OutTextSpc;
  OutTextLn('Q      Quit Game');                     OutTextSpc;
  OutTextXY(0,46,#26);
  OutTextXY(12,46,#25);
  OutTextXY(24,46,#27);
  OutTextXY(36,46,#24);
end;

{--------------------------------------------------------}
{ Make next figure in list the current one               }
{--------------------------------------------------------}
procedure List.Next;
begin
  Curr := Curr^.Next;
  if Curr = nil then
    Curr := Head;      { from tail go back to head }
end;

procedure List.Prev;
begin
  Curr := Curr^.Prev;
  if Curr = nil then
    Curr := Tail;
end;

procedure List.ChangeDie(Dir: DirType);
begin
  SetRollPort;
  DrawBorder(Curr^.DiePtr^.X1, Curr^.DiePtr^.Y1, NOBORDER);
  case Curr^.DiePtr^.WhichDie of
    1 : case Dir of
          Right,
          Left : begin
                   Prev;
                   Prev;
                 end;
          else
            Prev;
        end;
    2 : case Dir of
          Right : begin
                    Prev;
                    Prev;
                  end;
          Left  : begin
                    Next;
                    Next;
                  end;
          else
            Next;
        end;
    3 : case Dir of
          Right,
          Left : begin
                   Next;
                   Next;
                 end;
          else
            Prev;
        end;
    4 : case Dir of
          Right : Prev;
          Left  : begin
                    Next;
                    Next;
                  end;
          else
            Next;
        end;
    5 : case Dir of
          Right : begin
                    Prev;
                    Prev;
                  end;
          Left  : Next;
        end;
  end;
  DrawBorder(Curr^.DiePtr^.X1, Curr^.DiePtr^.Y1, BORDER);
end;

procedure List.RollDice;
var
  P: NodePtr;
begin
  SetRollPort;
  P := Head;
  while P <> nil do begin
    P^.DiePtr^.Roll;
    P := P^.Next;
  end;
end;

procedure List.Keep;
begin
  Curr^.DiePtr^.Keeping := Curr^.DiePtr^.Keeping = FALSE;
  Curr^.DiePtr^.Show;
end;

procedure List.GetValArray(var ValArray: TValArray);
var
  P: NodePtr;
  i: byte;
begin
  P := Head;
  i := 1;
  while P <> nil do begin
    ValArray[i] := P^.DiePtr^.GetValue;
    P := P^.Next;
    inc(i);
  end;
end;

procedure List.UnKeep;
begin
  SetRollPort;
  DrawBorder(Curr^.DiePtr^.X1, Curr^.DiePtr^.Y1, NOBORDER);
  Curr := Head;
  repeat
    if Curr^.DiePtr^.Keeping then Keep;
    Curr := Curr^.Next;
  until Curr = nil;
  Curr := Tail;
  DrawBorder(Curr^.DiePtr^.X1, Curr^.DiePtr^.Y1, BORDER);
end;


{--------------------------------------------------------}
{ Display the score card                                 }
{--------------------------------------------------------}
procedure DisplayScore;
begin
  SetScorePort;
  ClearViewPort;
  SetColor(White);
  OutTextln('ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
  OutTextln('³                                      ³');
  OutTextln('³                                      ³');
  OutTextln('³                                      ³');
  OutTextln('³                                      ³');
  OutTextln('³                                      ³');
  OutTextln('³                                      ³');
  OutTextln('³                                      ³');
  OutTextln('³                                      ³');
  PutPixel(3,72,White);
  PutPixel(4,72,White);
  PutPixel(3,73,White);
  PutPixel(4,73,White);
  PutPixel(315,72,White);
  PutPixel(316,72,White);
  PutPixel(315,73,White);
  PutPixel(316,73,White);
  OutTextln('ÉÍÍÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍ»');
  OutTextln('º Upper      ³            ³            º');
  OutTextln('º            ÃÄÄÄÂÄÄÄÂÄÄÄÄÅÄÄÄÂÄÄÄÂÄÄÄÄ¶');
  OutTextln('º    Section ³ 1 ³ 2 ³ 3  ³ 1 ³ 2 ³ 3  º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Aces   = 1 ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Twos   = 2 ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Threes = 3 ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Fours  = 4 ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Fives  = 5 ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Sixes  = 6 ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º TOTAL SCORE³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º BONUS +35  ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º TOTAL ÄÄÄÄ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÄ¶');
  OutTextln('º Lower Section                        º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÄ¶');
  OutTextln('º 3 of a kind³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º 4 of a kind³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Full House ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Sm Straight³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Lg Straight³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º YAHTZEE    ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Chance     ³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Lower Total³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Upper Total³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÄ¶');
  OutTextln('º Combined Ä³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÁÄÄÄÁÄÄÄÄÅÄÄÄÁÄÄÄÁÄÄÄÄ¶');
  OutTextln('º ÄÄÄÄÄÄÄÄÄÄ³x1  x2  x3  ³x1  x2  x3  º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÂÄÄÄÂÄÄÄÄÅÄÄÄÂÄÄÄÂÄÄÄÄ¶');
  OutTextln('º Total Score³   ³   ³    ³   ³   ³    º');
  OutTextln('ÇÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÁÄÄÄÁÄÄÄÄÅÄÄÄÁÄÄÄÁÄÄÄÄ¶');
  OutTextln('º Grand Total³            ³            º');
  OutTextln('ÈÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍ¼');
  OutTextXY(131,431,'³');
  OutTextXY(131,435,#31);
  OutTextXY(163,431,'³');
  OutTextXY(163,435,#31);
  OutTextXY(195,431,'³');
  OutTextXY(195,435,#31);
  OutTextXY(234,431,'³');
  OutTextXY(234,435,#31);
  OutTextXY(266,431,'³');
  OutTextXY(266,435,#31);
  OutTextXY(298,431,'³');
  OutTextXY(298,435,#31);
  SetColor(LightRed);
  SetTextStyle(1,0,3);
  OutTextXY(25,6,'TRIPLE');
  SetTextStyle(1,0,5);
  OutTextXY(125,24,'Yahtzee');
  SetColor(White);
  SetTextStyle(0,0,0);
end;

{--------------------------------------------------------}

constructor Player.Init(PlayerNo: byte);
begin
  WhichPlayer := PlayerNo;
  Section.Init;
  Section.PNumber := WhichPlayer;
  SetScorePort;
  SetTextJustify(CenterText, CenterText);
  case PlayerNo of
    1: OutTextXY(160,85,Name);
    2: OutTextXY(263,85,Name);
  end;
  SetTextJustify(LeftText,BottomText);
  SetMenuPort;
end;

procedure Player.TakeTurn(AList: List; var Quit: boolean);

  procedure Score(ValArray: TValArray; var Scored: boolean; MustScore: boolean);
  begin
    AList.GetValArray(ValArray);
    Section.Score(ValArray, Scored, MustScore);
    ShowMenu;
  end;

  procedure NOPE;
  begin
    SetMenuPort;
    ClearViewPort;
    OutTextXY(50,50,'You Haven''t Rolled Yet!');
    Beep;
    delay(1200);
    ShowMenu;
  end;

  procedure DisplayRolls(Old, New:byte);
  var
    OldStr, NewStr: string;
  begin
    SetPlayerPort;
    str(Old, OldStr);
    str(New, NewStr);
    SetColor(Black);
    OutTextXY(276,10,OldStr);
    SetColor(COLOR);
    OutTextXY(276,10,NewStr);
    SetColor(White);
  end;

var
  Scored: boolean;
  ValArray: TValArray;
  RollsLeft: byte;
  Ptr: NodePtr;
begin
  Quit := FALSE;
  Scored := FALSE;
  RollsLeft := 3;
  repeat
    case GetKeyCmd of
      F1 : begin
             MenuHelp;
             ShowMenu;
           end;
      K : if RollsLeft < 3 then begin
            SetRollPort;
            AList.Keep;
          end else
            NOPE;
      ALTK : begin
               KeepHelp;
               ShowMenu;
             end;
      S : if RollsLeft < 3 then
            Score(ValArray, Scored, FALSE)
          else
            NOPE;
      ALTS : begin
               ScoreHelp;
               ShowMenu;
             end;
      R, RET : begin
            AList.RollDice;
            DisplayRolls(RollsLeft,RollsLeft-1);
            dec(RollsLeft);
          end;
      ALTR : begin
               RollHelp;
               ShowMenu;
             end;
      RA : AList.ChangeDie(Right);
      LA : AList.ChangeDie(Left);
      UA : AList.ChangeDie(Up);
      DA : AList.ChangeDie(Down);
      Q : begin
            SetMenuPort;
            ClearViewPort;
            OutTextXY(50,50,'Are You Sure? (Y/N)');
            if Yes then begin
              Quit := TRUE;
              exit;
            end else
              ShowMenu;
          end;
      ALTQ : begin
               QuitHelp;
               ShowMenu;
             end;
      else
        Beep;
    end;
  until Scored or (RollsLeft = 0);
  if RollsLeft = 0 then
    Score(ValArray, Scored, TRUE);
  DisplayRolls(RollsLeft,3);
  AList.UnKeep;
end;

destructor Player.Done;
begin
  Section.Done;
end;

{-----------------------------------------------}

procedure GetPlayerInfo(var P1, P2: Player; var NumPlayers: byte);
begin
  SetMenuPort;
  repeat
    ClearViewPort;
    OutTextXY(0,60,'How Many Players? (1/2):  ');
    MoveTo(200,60);
    NumPlayers := GetNumberOfPlayers;
    OutTextXY(0,80,'  1: Enter Your Name:  ');
    MoveTo(200,80);
    P1.Name := GetString('1');
    if NumPlayers = 2 then begin
      OutTextXY(0,100,'  2: Enter Your Name: ');
      MoveTo(200,100);
      P2.Name := GetString('2');
    end;
    OutTextXY(0,120,'Is This Correct? (Y/N)');
  until Yes;
  P1.Init(1);
  if NumPlayers = 2 then
    P2.Init(2);
end;

procedure ChangePlayers(OldPlayer, NewPlayer: string);
begin
  SetPlayerPort;
  SetTextJustify(0,0);
  SetColor(Black);
  OutTextXY(65,10,OldPlayer);
  SetColor(COLOR);
  OutTextXY(65,10,NewPlayer);
  SetColor(White);
end;

procedure OnePlayerFinish;
begin
  SetMenuPort;
  ClearViewPort;
  OutTextXY(50,80,'Press Enter To Quit.');
  while GetKeyCmd <> RET do
    Beep;
end;

procedure TwoPlayerFinish(Player1, Player2: Player);
begin
  SetMenuPort;
  ClearViewPort;
  if Player1.Section.GrandTotal > Player2.Section.GrandTotal then begin
    MoveTo(70,50);
    OutText(Player1.Name);
    OutText(' Wins!');
  end else if Player1.Section.GrandTotal < Player2.Section.GrandTotal then begin
    MoveTo(70,50);
    OutText(Player2.Name);
    OutText(' Wins!');
  end else
    OutTextXY(70,50,'A Tie Game!');
  OutTextXY(45,80,'Press Enter To Quit.');
  while GetKeyCmd <> RET do
    Beep;
end;


{--------------------------------------------------------}
var
  AList: List;
  NumberOfPlayers, Turns: byte;
  Player1, Player2: Player;
  Quit: boolean;
  BGIPath: string;

begin
  if paramcount > 0 then
    BGIPath := paramstr(1)
  else
    BGIPath := '';
  if NOT OpenGraph(BGIPath) then begin
    writeln(#13#10, 'Enter full path to BGI drivers: "tyahtzee c:\tp\bgi"');
    if BGIPath <> '' then
      writeln('If drivers are in current directory, do not specify path');
    halt(1);
  end;
  Quit := FALSE;
  StartScreen;
  ResetScreen;
  DisplayScore;
  GetPlayerInfo(Player1,Player2,NumberOfPlayers);
  ShowMenu;
  AList.Init;
  Turns := 0;
  SetPlayerPort;
  OutTextXY(180,10,'Rolls Left:');
  SetColor(COLOR);
  OutTextXY(276,10,'3');
  SetColor(White);
  case NumberOfPlayers of
    1 : begin
          repeat
            Player1.TakeTurn(AList, Quit);
            inc(Turns);
          until Quit or (Turns = 39);
          Player1.Done;
          OnePlayerFinish;
        end;
    2 : begin
          SetPlayerPort;
          OutTextXY(0,10,'Player: ');
          repeat
            ChangePlayers(Player2.Name,Player1.Name);
            Player1.TakeTurn(AList, Quit);
            if not Quit then begin
              ChangePlayers(Player1.Name,Player2.Name);
              Player2.TakeTurn(AList, Quit);
              inc(Turns);
            end;
          until Quit or (Turns = 39);
          Player2.Done;
          Player1.Done;
          TwoPlayerFinish(Player1,Player2);
        end;
  end;
  AList.Done;
  ResetScreen;
  DoneScreen;
  closegraph;
end.