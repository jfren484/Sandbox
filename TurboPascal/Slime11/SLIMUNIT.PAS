unit Slimunit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, MyUtils, About, Players;

type
  TGrid = array[1..8,1..8] of byte;

  TPlayerArray = array[1..2] of record
    Name: string[10];
    Color: longint;
    Count: byte;
    Is_Computer: boolean;
  end;

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Game1: TMenuItem;
    Shape1: TShape;    Shape2: TShape;    Shape3: TShape;    Shape4: TShape;
    Shape5: TShape;    Shape6: TShape;    Shape7: TShape;    Shape8: TShape;
    Shape9: TShape;    Shape10: TShape;   Shape11: TShape;   Shape12: TShape;
    Shape13: TShape;   Shape14: TShape;   Shape15: TShape;   Shape16: TShape;
    Shape17: TShape;   Shape18: TShape;   Shape19: TShape;   Shape20: TShape;
    Shape21: TShape;   Shape22: TShape;   Shape23: TShape;   Shape24: TShape;
    Shape25: TShape;   Shape26: TShape;   Shape27: TShape;   Shape28: TShape;
    Shape29: TShape;   Shape30: TShape;   Shape31: TShape;   Shape32: TShape;
    Shape33: TShape;   Shape34: TShape;   Shape35: TShape;   Shape36: TShape;
    Shape37: TShape;   Shape38: TShape;   Shape39: TShape;   Shape40: TShape;
    Shape41: TShape;   Shape42: TShape;   Shape43: TShape;   Shape44: TShape;
    Shape45: TShape;   Shape46: TShape;   Shape47: TShape;   Shape48: TShape;
    Shape49: TShape;   Shape50: TShape;   Shape51: TShape;   Shape52: TShape;
    Shape53: TShape;   Shape54: TShape;   Shape55: TShape;   Shape56: TShape;
    Shape57: TShape;   Shape58: TShape;   Shape59: TShape;   Shape60: TShape;
    Shape61: TShape;   Shape62: TShape;   Shape63: TShape;   Shape64: TShape;
    Exit1: TMenuItem;
    N1: TMenuItem;
    New1: TMenuItem;
    Shape65: TShape;   Shape66: TShape;   Shape67: TShape;   Shape68: TShape;
    Shape69: TShape;   Shape70: TShape;   Shape71: TShape;   Shape72: TShape;
    Shape73: TShape;   Shape74: TShape;   Shape75: TShape;   Shape76: TShape;
    Shape77: TShape;   Shape78: TShape;   Shape79: TShape;   Shape80: TShape;
    Shape81: TShape;   Shape82: TShape;   Shape83: TShape;   Shape84: TShape;
    Shape85: TShape;   Shape86: TShape;   Shape87: TShape;   Shape88: TShape;
    Shape89: TShape;   Shape90: TShape;   Shape91: TShape;   Shape92: TShape;
    Shape93: TShape;   Shape94: TShape;   Shape95: TShape;   Shape96: TShape;
    Shape97: TShape;   Shape98: TShape;   Shape99: TShape;   Shape100: TShape;
    Shape101: TShape;  Shape102: TShape;  Shape103: TShape;  Shape104: TShape;
    Shape105: TShape;  Shape106: TShape;  Shape107: TShape;  Shape108: TShape;
    Shape109: TShape;  Shape110: TShape;  Shape111: TShape;  Shape112: TShape;
    Shape113: TShape;  Shape114: TShape;  Shape115: TShape;  Shape116: TShape;
    Shape117: TShape;  Shape118: TShape;  Shape119: TShape;  Shape120: TShape;
    Shape121: TShape;  Shape122: TShape;  Shape123: TShape;  Shape124: TShape;
    Shape125: TShape;  Shape126: TShape;  Shape127: TShape;  Shape128: TShape;
    Bevel1: TBevel;
    Score_Label: TLabel;
    Bevel2: TBevel;
    Curr_Player_Label: TLabel;
    ShowTargets1: TMenuItem;
    SkillE: TMenuItem;
    SkillD: TMenuItem;
    Players1: TMenuItem;
    OneisComputer1: TMenuItem;
    TwoisComputer1: TMenuItem;
    Timer1: TTimer;
    N2: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    N3: TMenuItem;
    PlayerInfo1: TMenuItem;
    RestoreSavedGame1: TMenuItem;
    SaveGame1: TMenuItem;
    N4: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Contents1: TMenuItem;
    SearchforHelpOn1: TMenuItem;
    N5: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure New1Click(Sender: TObject);
    procedure RestoreSavedGame1Click(Sender: TObject);
    procedure SaveGame1Click(Sender: TObject);
    procedure ShowTargets1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure PlayerInfo1Click(Sender: TObject);
    procedure isComputer1Click(Sender: TObject);
    procedure SkillClick(Sender: TObject);
    procedure Contents1Click(Sender: TObject);
    procedure SearchforHelpOn1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
  private
    Slime_Array: array[1..8,1..8] of ^TShape;
    Curr_Player, Skill_Level: byte;
    Game_Over, Player_Can_Move, Slime_Selected: boolean;
    Player: TPlayerArray;
    Selected_Slime: record
      sX, sY: byte;
      sColor: longint;
    end;
    procedure Show_Slime(x, y: byte; Color: longint);
    procedure Hide_Slime(x, y: byte);
    procedure Select_Slime(x, y: byte);
    function Move_Slime(x, y: byte): boolean;
    function Change_Player: boolean;
    procedure Update_Cursors;
    procedure Get_Best_Move(Which_Color: byte; var Sx, Sy, Dx, Dy: byte);
    procedure End_Game;
    procedure Show_Player_Info;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

const
  myWhite = 0;
  myCOne = 1;
  myCTwo = 2;
  myElse = 3;

procedure TForm1.Show_Slime(x, y: byte; Color: longint);
var
  Owner_Num: byte;
begin
  if Color = Player[1].Color then
    Owner_Num := 1
  else
    Owner_Num := 2;

  with Slime_Array[x,y]^ do
    if Brush.Color <> Color then begin
      if Brush.Color <> clWhite then
        dec(Player[Owner_Num mod 2 + 1].Count);
      inc(Player[Owner_Num].Count);
      Pen.Style := psSolid;
      Brush.Color := Color;
    end;
end;

procedure TForm1.Hide_Slime(x, y: byte);
begin
  with Slime_Array[x,y]^ do begin
    if Brush.Color = Player[1].Color then
      dec(Player[1].Count)
    else if Brush.Color = Player[2].Color then
      dec(Player[2].Count);

    Brush.Color := clWhite;
    Pen.Style := psClear;
  end;
end;

procedure TForm1.Select_Slime(x, y: byte);
begin
  Slime_Selected := true;
  Selected_Slime.sX := x;
  Selected_Slime.sY := y;
  Selected_Slime.sColor := Slime_Array[x,y]^.Brush.Color;
  Slime_Array[x,y]^.Pen.Width := 2;
  Update_Cursors;
end;

function TForm1.Move_Slime(x, y: byte): boolean;
var
  i, j: byte;
begin
  Slime_Selected := false;
  with Selected_Slime do begin
    Slime_Array[sX,sY]^.Pen.Width := 1;
    if (x <> sX) OR (y <> sY) then begin
      Show_Slime(x, y, sColor);
      if Grid_Dist(x, y, sX, sY) > 1 then
        Hide_Slime(sX,sY);
      for i := MaxByte(x - 1, 1) to MinByte(x + 1, 8) do
        for j := MaxByte(y - 1, 1) to MinByte(y + 1, 8) do
          if Slime_Array[i,j]^.Brush.Color <> clWhite then
            Show_Slime(i, j, sColor);
    end else
      Update_Cursors;
  end;
  Result := (Selected_Slime.sX <> x) OR (Selected_Slime.sY <> y);
end;

function TForm1.Change_Player: boolean;
var
  i, j: byte;
begin
  Curr_Player := Curr_Player mod 2 + 1;
  Score_Label.Caption := Player[1].Name + ':  ' + IntToStr(Player[1].Count) +
                '    ' + Player[2].Name + ':  ' + IntToStr(Player[2].Count);
  Curr_Player_Label.Caption := 'Current Player:  ' + Player[Curr_Player].Name;
  Update_Cursors;
  Result := Player_Can_Move;
end;

procedure TForm1.Update_Cursors;
var
  Grid: array[-1..10,-1..10] of byte;

  function Can_Move(x, y: byte): boolean;
  var
    i, j: shortint;
  begin
    Result := false;
    if Grid[x,y] = Curr_Player then
      for i := (x - 2) to (x + 2) do
        for j := (y - 2) to (y + 2) do
          if Grid[i,j] = myWhite then begin
            Result := true;
            Player_Can_Move := true;
            exit;
          end;
  end;

var
  i, j: shortint;
begin
  Player_Can_Move := true;

  for i := -1 to 10 do
    for j := -1 to 10 do
      if (i < 1) OR (i > 8) OR (j < 1) OR (j > 8) then
        Grid[i,j] := myElse
      else
        with Slime_Array[i,j]^.Brush do
          if Color = clWhite then
            Grid[i,j] := myWhite
          else if Color = Player[1].Color then
            Grid[i,j] := myCOne
          else if Color = Player[2].Color then
            Grid[i,j] := myCTwo
          else
            Grid[i,j] := myElse;

  if Slime_Selected then
    for i := 1 to 8 do
      for j := 1 to 8 do
        with Selected_Slime do
          if ((Grid_Dist(i, j, sX, sY) <= 2) AND (Grid[i,j] = myWhite)) OR
             ((i = sX) AND (j = sY)) then begin
            if NOT Player[Curr_Player].Is_Computer then
              Slime_Array[i,j]^.Cursor := crCross;
            if ShowTargets1.Checked then
              Slime_Array[i,j]^.Pen.Style := psSolid;
          end else
            Slime_Array[i,j]^.Cursor := crDefault
  else begin
    Player_Can_Move := false;
    for i := 1 to 8 do
      for j := 1 to 8 do
        if Can_Move(i,j) AND NOT Player[Curr_Player].Is_Computer then
          Slime_Array[i,j]^.Cursor := crCross
        else begin
          if Slime_Array[i,j]^.Brush.Color = clWhite then
            Slime_Array[i,j]^.Pen.Style := psClear;
          Slime_Array[i,j]^.Cursor := crDefault;
        end;
  end;
end;

{ The next procedure is quite long - look for another comment line at the end }
procedure TForm1.Get_Best_Move(Which_Color: byte; var Sx, Sy, Dx, Dy: byte);

  procedure Update_Grid(var Color_Grid: TGrid; Sx, Sy, Dx, Dy: byte);
  var
    k, l: byte;
  begin
    Color_Grid[Dx,Dy] := Color_Grid[Sx,Sy];
    if Grid_Dist(Sx, Sy, Dx, Dy) > 1 then
      Color_Grid[Sx,Sy] := myWhite;

    for k := MaxByte(Dx - 1, 1) to MinByte(Dx + 1, 8) do
      for l := MaxByte(Dy - 1, 1) to MinByte(Dy + 1, 8) do
        if Color_Grid[k,l] <> myWhite then
          Color_Grid[k,l] := Color_Grid[Dx,Dy];
  end;

  function Score_Grid(Which_Color: byte; var Color_Grid: TGrid): shortint;
  var
    i, j: byte;
  begin
    Result := 0;
    for i := 1 to 8 do
      for j := 1 to 8 do
        if Color_Grid[i,j] = Which_Color then
          inc(Result)
        else if Color_Grid[i,j] <> myWhite then
          dec(Result);
  end;

  function Get_Best_Action(Which_Color: byte; var Sx, Sy, Dx, Dy: byte;
                           var Color_Grid: TGrid): shortint;

    function Get_Worst_React(Which_Color: byte;
                             var Color_Grid: TGrid): shortint;
    var
      i, j, k, l: byte;
      New_Grid: TGrid;
    begin
      Result := 65;

      for i := 1 to 8 do
        for j := 1 to 8 do   {(below) WC mod 2 + 1 = Enemy Color }
          if Color_Grid[i,j] = (Which_Color mod 2 + 1) then
            for k := MaxByte(i - 2, 1) to MinByte(i + 2, 8) do
              for l := MaxByte(j - 2, 1) to MinByte(j + 2, 8) do
                if Color_Grid[k,l] = myWhite then begin
                  New_Grid := Color_Grid;
                  Update_Grid(New_Grid, i, j, k, l);
                  Result := MinShort(Result, Score_Grid(Which_Color, New_Grid))
                end;
    end;

  var
    i, j, k, l: byte;
    Temp_Result: shortint;
    New_Grid: TGrid;
  begin
    Result := -65;

    for i := 1 to 8 do
      for j := 1 to 8 do
        if Color_Grid[i,j] = Which_Color then
          for k := MaxByte(i - 2, 1) to MinByte(i + 2, 8) do
            for l := MaxByte(j - 2, 1) to MinByte(j + 2, 8) do
              if Color_Grid[k,l] = myWhite then begin
                New_Grid := Color_Grid;
                Update_Grid(New_Grid, i, j, k, l);
                if Skill_Level = 0 then
                  Temp_Result := Score_Grid(Which_Color, New_Grid)
                else
                  Temp_Result := Get_Worst_React(Which_Color, New_Grid);
                if Temp_Result > Result then begin
                  Sx := i;
                  Sy := j;
                  Dx := k;
                  Dy := l;
                  Result := Temp_Result;
                end;
              end;
  end;

var
  i, j, k, l: byte;
  Color_Grid: TGrid;
begin
  Sx := 0;
  Sy := 0;
  Dx := 0;
  Dy := 0;

  for i := 1 to 8 do
    for j := 1 to 8 do
      with Slime_Array[i,j]^.Brush do
        if Color = Player[1].Color then
          Color_Grid[i,j] := myCOne
        else if Color = Player[2].Color then
          Color_Grid[i,j] := myCTwo
        else
          Color_Grid[i,j] := myWhite;

  Get_Best_Action(Which_Color, Sx, Sy, Dx, Dy, Color_Grid);
end;
{ End of Artificial Intelligence procedure }

procedure TForm1.End_Game;
var
  Game_Over_Str: string;
begin
  Game_Over := true;

  if Player[1].Count = Player[2].Count then
    Game_Over_Str := 'Game Over!' + #13 + 'Tie Game'
  else begin
    if Player[1].Count > Player[2].Count then
      Curr_Player := 1
    else
      Curr_Player := 2;
    Game_Over_Str := 'Game Over!' + #13 + Player[Curr_Player].Name + ' Wins';
  end;

  MessageDlg(Game_Over_Str, mtInformation, [mbOK], 0);
end;

procedure TForm1.Show_Player_Info;
var
  i, j: byte;
  Save_Color: array[1..2] of longint;
begin
  if PlayerDlg.ShowModal = mrOK then begin
    Save_Color[1] := Player[1].Color;
    Save_Color[2] := Player[2].Color;

    Player[1].Name := PlayerDlg.Edit1.Text;
    Player[2].Name := PlayerDlg.Edit2.Text;
    Player[1].Color := PlayerDlg.ColorLabel1.Color;
    Player[2].Color := PlayerDlg.ColorLabel2.Color;
    Score_Label.Caption := Player[1].Name + ':  ' + IntToStr(Player[1].Count) +
                  '    ' + Player[2].Name + ':  ' + IntToStr(Player[2].Count);
    Curr_Player_Label.Caption := 'Current Player:  ' + Player[Curr_Player].Name;

    for i := 1 to 8 do
      for j := 1 to 8 do
        with Slime_Array[i,j]^.Brush do
          if Color = Save_Color[1] then
            Color := Player[1].Color
          else if Color = Save_Color[2] then
            Color := Player[2].Color;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Slime_Array[1,1] := @Shape65;   Slime_Array[1,2] := @Shape66;
  Slime_Array[1,3] := @Shape67;   Slime_Array[1,4] := @Shape68;
  Slime_Array[1,5] := @Shape69;   Slime_Array[1,6] := @Shape70;
  Slime_Array[1,7] := @Shape71;   Slime_Array[1,8] := @Shape72;
  Slime_Array[2,1] := @Shape73;   Slime_Array[2,2] := @Shape74;
  Slime_Array[2,3] := @Shape75;   Slime_Array[2,4] := @Shape76;
  Slime_Array[2,5] := @Shape77;   Slime_Array[2,6] := @Shape78;
  Slime_Array[2,7] := @Shape79;   Slime_Array[2,8] := @Shape80;
  Slime_Array[3,1] := @Shape81;   Slime_Array[3,2] := @Shape82;
  Slime_Array[3,3] := @Shape83;   Slime_Array[3,4] := @Shape84;
  Slime_Array[3,5] := @Shape85;   Slime_Array[3,6] := @Shape86;
  Slime_Array[3,7] := @Shape87;   Slime_Array[3,8] := @Shape88;
  Slime_Array[4,1] := @Shape89;   Slime_Array[4,2] := @Shape90;
  Slime_Array[4,3] := @Shape91;   Slime_Array[4,4] := @Shape92;
  Slime_Array[4,5] := @Shape93;   Slime_Array[4,6] := @Shape94;
  Slime_Array[4,7] := @Shape95;   Slime_Array[4,8] := @Shape96;
  Slime_Array[5,1] := @Shape97;   Slime_Array[5,2] := @Shape98;
  Slime_Array[5,3] := @Shape99;   Slime_Array[5,4] := @Shape100;
  Slime_Array[5,5] := @Shape101;  Slime_Array[5,6] := @Shape102;
  Slime_Array[5,7] := @Shape103;  Slime_Array[5,8] := @Shape104;
  Slime_Array[6,1] := @Shape105;  Slime_Array[6,2] := @Shape106;
  Slime_Array[6,3] := @Shape107;  Slime_Array[6,4] := @Shape108;
  Slime_Array[6,5] := @Shape109;  Slime_Array[6,6] := @Shape110;
  Slime_Array[6,7] := @Shape111;  Slime_Array[6,8] := @Shape112;
  Slime_Array[7,1] := @Shape113;  Slime_Array[7,2] := @Shape114;
  Slime_Array[7,3] := @Shape115;  Slime_Array[7,4] := @Shape116;
  Slime_Array[7,5] := @Shape117;  Slime_Array[7,6] := @Shape118;
  Slime_Array[7,7] := @Shape119;  Slime_Array[7,8] := @Shape120;
  Slime_Array[8,1] := @Shape121;  Slime_Array[8,2] := @Shape122;
  Slime_Array[8,3] := @Shape123;  Slime_Array[8,4] := @Shape124;
  Slime_Array[8,5] := @Shape125;  Slime_Array[8,6] := @Shape126;
  Slime_Array[8,7] := @Shape127;  Slime_Array[8,8] := @Shape128;

  with Player[1] do begin
    Name := 'Blue';
    Color := clBlue;
    Count := 2;
    Is_Computer := false;
  end;
  with Player[2] do begin
    Name := 'Red';
    Color := clRed;
    Count := 2;
    Is_Computer := false;
  end;

  Skill_Level := 0;
  Curr_Player := myCOne;
  Slime_Selected := false;
  Game_Over := false;
  Update_Cursors;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  MessageBeep(MB_ICONASTERISK);
  CanClose := MessageDlg('Are you sure?', mtConfirmation, [mbYes,mbCancel], 0)
               = mrYes;
end;

procedure TForm1.New1Click(Sender: TObject);
var
  i, j: byte;
begin
  for i := 1 to 8 do
    for j := 1 to 8 do
      Hide_Slime(i,j);

  Score_Label.Caption := Player[1].Name + ':  2    ' + Player[2].Name + ':  2';
  Curr_Player_Label.Caption := 'Current Player:  ' + Player[1].Name;
  Curr_Player := myCOne;
  Slime_Selected := false;
  Game_Over := false;

  Show_Slime(1,1,Player[1].Color);
  Show_Slime(1,8,Player[2].Color);
  Show_Slime(8,1,Player[2].Color);
  Show_Slime(8,8,Player[1].Color);
  Update_Cursors;
end;

type
  TGameFile = record
    Header: string[5];
    Version: string[2];
    Player: TPlayerArray;
    Skill, Curr_Player: byte;
    ShowTargets: bytebool;
    Grid: array[1..8,1..8] of byte;
  end;

procedure TForm1.RestoreSavedGame1Click(Sender: TObject);
var
  File_Ptr: file;
  Game_Stats: TGameFile;
  i, j: byte;
  Result: integer;
begin
  if OpenDialog1.Execute then begin
    AssignFile(File_Ptr, OpenDialog1.FileName);
    Reset(File_Ptr, 1);
    BlockRead(File_Ptr, Game_Stats, sizeof(TGameFile), Result);

    if Game_Stats.Header <> 'SLIME' then begin
      MessageBeep(MB_ICONHAND);
      MessageDlg(OpenDialog1.FileName +
        ' is not a valid Slime 1.0 saved game file!', mtWarning, [mbOK], 0);
      exit;
    end;

    Player := Game_Stats.Player;
    OneisComputer1.Checked := Player[1].Is_Computer;
    TwoisComputer1.Checked := Player[2].Is_Computer;
    ShowTargets1.Checked := Game_Stats.ShowTargets;

    if Game_Stats.Skill = 1 then
      SkillClick(SkillD)
    else
      SkillClick(SkillE);

    for i := 1 to 8 do
      for j := 1 to 8 do
        case Game_Stats.Grid[i,j] of
          1: Show_Slime(i, j, Player[1].Color);
          2: Show_Slime(i, j, Player[2].Color);
          else
            Hide_Slime(i, j);
        end;

    Player := Game_Stats.Player;
    Curr_Player := Game_Stats.Curr_Player mod 2 + 1;
    Change_Player;

    CloseFile(File_Ptr);
  end;
end;

procedure TForm1.SaveGame1Click(Sender: TObject);
var
  File_Ptr: file;
  Game_Stats: TGameFile;
  i, j: byte;
begin
  if SaveDialog1.Execute then begin
    AssignFile(File_Ptr, SaveDialog1.FileName);
    Rewrite(File_Ptr, 1);

    for i := 1 to 8 do
      for j := 1 to 8 do
        with Slime_Array[i,j]^.Brush do
          if Color = Player[1].Color then
            Game_Stats.Grid[i,j] := 1
          else if Color = Player[2].Color then
            Game_Stats.Grid[i,j] := 2
          else
            Game_Stats.Grid[i,j] := 0;

    Game_Stats.Header      := 'SLIME10';
    Game_Stats.Player      := Player;
    Game_Stats.ShowTargets := ShowTargets1.Checked;
    Game_Stats.Skill       := Skill_Level;
    Game_Stats.Curr_Player := Curr_Player;

    BlockWrite(File_Ptr, Game_Stats, sizeof(TGameFile));
    CloseFile(File_Ptr);
  end;
end;

procedure TForm1.ShowTargets1Click(Sender: TObject);
begin
  with Sender as TMenuItem do
    Checked := NOT Checked;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.PlayerInfo1Click(Sender: TObject);
begin
  PlayerDlg.Edit1.Text := Player[1].Name;
  PlayerDlg.Edit2.Text := Player[2].Name;
  PlayerDlg.ColorLabel1.Color := Player[1].Color;
  PlayerDlg.ColorLabel2.Color := Player[2].Color;

  Show_Player_Info;
end;

procedure TForm1.isComputer1Click(Sender: TObject);
begin
  with Sender as TMenuItem do begin
    Checked := NOT Checked;
    Player[Tag].Is_Computer := NOT Player[Tag].Is_Computer;

    if Slime_Selected then begin
      Slime_Selected := false;
      with Selected_Slime do
        Slime_Array[sX,sY]^.Pen.Width := 1;
    end;

    if NOT Player[Tag].Is_Computer then
      Update_Cursors;
  end;
end;

procedure TForm1.SkillClick(Sender: TObject);
begin
  with Sender as TMenuItem do
    if Skill_Level <> Tag then begin
      Skill_Level := Tag;
      SkillE.Checked := NOT SkillE.Checked;
      SkillD.Checked := NOT SkillD.Checked;
    end;
end;

procedure TForm1.Contents1Click(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TForm1.SearchforHelpOn1Click(Sender: TObject);
begin
  Application.HelpCommand(HELP_PARTIALKEY, 0);
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TForm1.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i, j: byte;
begin
  with Sender as TShape do
    if Cursor = crCross then
      if Slime_Selected then begin
        if Move_Slime(Tag div 10, Tag mod 10) then
          if NOT Change_Player then
            if NOT Change_Player then
              End_Game;
      end else
        Select_Slime(Tag div 10, Tag mod 10)
    else begin
      MessageBeep(MB_ICONHAND);
      MessageDlg('That is not a valid choice!', mtWarning, [mbOK], 0);
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  SourceX, SourceY, DestX, DestY: byte;
begin
  if Player[Curr_Player].Is_Computer AND NOT Game_Over then begin
    Screen.Cursor := crHourglass;
    Get_Best_Move(Curr_Player, SourceX, SourceY, DestX, DestY);
    Screen.Cursor := crDefault;

    Select_Slime(SourceX, SourceY);
    Move_Slime(DestX, DestY);

    if NOT Change_Player then
      if NOT Change_Player then
        End_Game;
  end;
end;

end.
