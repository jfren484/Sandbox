unit HelpUnit;

interface

const
  ESC  =  27;
  ALT1 = -120;
  ALT2 = -121;
  ALT3 = -122;
  ALT4 = -123;
  ALT5 = -124;
  ALT6 = -125;
  ALTC = -46;
  ALTF = -33;
  ALTH = -35;
  ALTK = -37;
  ALTL = -38;
  ALTQ = -16;
  ALTR = -19;
  ALTS = -31;
  ALTT = -20;
  ALTY = -21;

procedure Beep;
procedure MenuHelp;
procedure KeepHelp;
procedure ScoreHelp;
procedure RollHelp;
procedure QuitHelp;
procedure ScoreMenuHelp;
procedure OnesHelp;
procedure TwosHelp;
procedure ThreesHelp;
procedure FoursHelp;
procedure FivesHelp;
procedure SixesHelp;
procedure TOAKHelp;
procedure FOAKHelp;
procedure FullHelp;
procedure SmallHelp;
procedure LargeHelp;
procedure YtzeeHelp;
procedure ChanceHelp;
procedure QuitScorHelp;


implementation

uses
  crt, graph, Stringer;

procedure SetMenuPort;
begin
  SetViewPort(0,21,GetMaxX-320,GetMaxY-160,ClipOn);
end;

procedure Beep;
begin
  sound(1000);
  delay(75);
  sound(800);
  delay(75);
  nosound;
end;


procedure MenuHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' A maximum of three rolls is allowed');
  OutTextXY(0,40,' before scoring. Select dice to keep,');
  OutTextXY(0,50,' then roll.  For help on a specific');
  OutTextXY(0,60,' menu item, press the item key while');
  OutTextXY(0,70,' holding the <Alt> key.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure KeepHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' Press "K" to select the dice you want');
  OutTextXY(0,40,' to keep and to deselect the dice you');
  OutTextXY(0,50,' no longer want.  The dice that are');
  OutTextXY(0,60,' selected will be tinted gray.  You may');
  OutTextXY(0,70,' take as much time as  you need to');
  OutTextXY(0,80,' select dice and may change your mind');
  OutTextXY(0,90,' at any time before you roll.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure ScoreHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' If you would like to score your dice');
  OutTextXY(0,40,' before your third role, press "S".');
  OutTextXY(0,50,' You may then choose how you would like');
  OutTextXY(0,60,' to score them.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure RollHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' When you are satisfied with the selec-');
  OutTextXY(0,40,' ted dice, or have just started a turn,');
  OutTextXY(0,50,' press "R" to roll them.  Make sure you');
  OutTextXY(0,60,' have made all of the selection changes');
  OutTextXY(0,70,' you want, because once you press "R"');
  OutTextXY(0,80,' you cannot change your mind.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure QuitHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' If you are finished playing Yahtzee,');
  OutTextXY(0,40,' press "Q".  You will be asked if you');
  OutTextXY(0,50,' are sure.  Press either a "Y" or an');
  OutTextXY(0,60,' "N".  The total score(s) will be dis-');
  OutTextXY(0,70,' played, and you will be prompted to');
  OutTextXY(0,80,' press <Enter>;');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure ScoreMenuHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10, '{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30, ' Choose how you want to score and press');
  OutTextXY(0,40, ' the menu item letter of your choice.');
  OutTextXY(0,50, ' If you have not used all three rolls');
  OutTextXY(0,60, ' and would like to roll again, press');
  OutTextXY(0,70, ' "Q".  You will be returned to the main');
  OutTextXY(0,80, ' menu.  As at the main menu, help for a');
  OutTextXY(0,90, ' specific menu item is available by');
  OutTextXY(0,100,' pressing the item key while holding');
  OutTextXY(0,110,' the <Alt> key.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure OnesHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,'  All 1''s will be added and the total');
  OutTextXY(0,40,'  placed in the "Aces" row in the first');
  OutTextXY(0,50,'  open column.  If there are no avail-');
  OutTextXY(0,60,'  able columns a message will be dis-');
  OutTextXY(0,70,'  played and a beep will sound.  You');
  OutTextXY(0,80,'  will be returned to the scoring menu');
  OutTextXY(0,90,'  to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure TwosHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' All 2''s will be added and the total');
  OutTextXY(0,40,' placed in the "Twos" row in the first');
  OutTextXY(0,50,' open column.  If there are no avail-');
  OutTextXY(0,60,' able columns a message will be dis-');
  OutTextXY(0,70,' played and a beep will sound.  You');
  OutTextXY(0,80,' will be returned to the scoring menu');
  OutTextXY(0,90,' to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure ThreesHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' All 3''s will be added and the total');
  OutTextXY(0,40,' placed in the "Threes" row in the');
  OutTextXY(0,50,' first open column.  If there are no');
  OutTextXY(0,60,' available columns a message will be');
  OutTextXY(0,70,' displayed and a beep will sound.  You');
  OutTextXY(0,80,' will be returned to the scoring menu');
  OutTextXY(0,90,' to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure FoursHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' All 4''s will be added and the total');
  OutTextXY(0,40,' placed in the "Fours" row in the first');
  OutTextXY(0,50,' open column.  If there are no avail-');
  OutTextXY(0,60,' able columns a message will be dis-');
  OutTextXY(0,70,' played and a beep will sound.  You');
  OutTextXY(0,80,' will be returned to the scoring menu');
  OutTextXY(0,90,' to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure FivesHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' All 5''s will be added and the total');
  OutTextXY(0,40,' placed in the "Fives" row in the first');
  OutTextXY(0,50,' open column.  If there are no avail-');
  OutTextXY(0,60,' able columns a message will be dis-');
  OutTextXY(0,70,' played and a beep will sound.  You');
  OutTextXY(0,80,' will be returned to the scoring menu');
  OutTextXY(0,90,' to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure SixesHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' All 6''s will be added and the total');
  OutTextXY(0,40,' placed in the "Sixes" row in the first');
  OutTextXY(0,50,' open column.  If there are no avail-');
  OutTextXY(0,60,' able columns a message will be dis-');
  OutTextXY(0,70,' played and a beep will sound.  You');
  OutTextXY(0,80,' will be returned to the scoring menu');
  OutTextXY(0,90,' to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure TOAKHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10, '{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30, ' If there are three or more dice with');
  OutTextXY(0,40, ' the same value, the total of all five');
  OutTextXY(0,50, ' dice will be scored in the "3 of a');
  OutTextXY(0,60, ' kind" row in the first open column.');
  OutTextXY(0,70, ' If not, a 0 will be scored instead.');
  OutTextXY(0,80, ' If there are no available columns a');
  OutTextXY(0,90, ' message will be displayed and a beep');
  OutTextXY(0,100,' will sound.  You will be returned to');
  OutTextXY(0,110,' the scoring menu to make another');
  OutTextXY(0,120,' choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure FOAKHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10, '{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30, ' If there are four or more dice with');
  OutTextXY(0,40, ' the same value, the total of all five');
  OutTextXY(0,50, ' dice will be scored in the "4 of a');
  OutTextXY(0,60, ' kind" row in the first open column.');
  OutTextXY(0,70, ' If not, a 0 will be scored instead.');
  OutTextXY(0,80, ' If there are no available columns a');
  OutTextXY(0,90, ' message will be displayed and a beep');
  OutTextXY(0,100,' will sound.  You will be returned to');
  OutTextXY(0,110,' the scoring menu to make another');
  OutTextXY(0,120,' choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure FullHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10, '{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30, ' If there are three dice with one value');
  OutTextXY(0,40, ' and two with another, 25 points will');
  OutTextXY(0,50, ' be scored in the "Full House" row in');
  OutTextXY(0,60, ' the first open column.  If there are');
  OutTextXY(0,70, ' not three dice with one value and two');
  OutTextXY(0,80, ' with another, a 0 will be scored.  If');
  OutTextXY(0,90, ' there are no available columns a mes-');
  OutTextXY(0,100,' sage will be displayed and a beep will');
  OutTextXY(0,110,' sound.  You will be returned to the');
  OutTextXY(0,120,' scoring menu to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure SmallHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10, '{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30, ' If there are at least four dice whose');
  OutTextXY(0,40, ' values are sequential--for instance,');
  OutTextXY(0,50, ' the dice with values 1, 2, 3, and 4--');
  OutTextXY(0,60, ' then 30 points will be scored in the');
  OutTextXY(0,70, ' "Sm Straight" row in the first open');
  OutTextXY(0,80, ' column.  If the dice do not form a');
  OutTextXY(0,90, ' small straight, a 0 will be scored. If');
  OutTextXY(0,100,' there are no available columns a mes-');
  OutTextXY(0,110,' sage will be displayed and a beep will');
  OutTextXY(0,120,' sound.  You will be returned to the');
  OutTextXY(0,130,' scoring menu to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure LargeHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10, '{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30, ' If there are five dice whose values');
  OutTextXY(0,40, ' are sequential--for instance, the dice');
  OutTextXY(0,50, ' with values 2, 3, 4, 5, and 6--then');
  OutTextXY(0,60, ' 40 points will be scored in the "Lg');
  OutTextXY(0,70, ' Straight" row in the first open column.');
  OutTextXY(0,80, ' If the dice do not form a large');
  OutTextXY(0,90, ' straight, a 0 will be scored. If there');
  OutTextXY(0,100,' are no available columns a message');
  OutTextXY(0,110,' will be displayed and a beep will');
  OutTextXY(0,120,' sound.  You will be returned to the');
  OutTextXY(0,130,' scoring menu to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure YtzeeHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10, '{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30, ' If all five dice have the same value');
  OutTextXY(0,40, ' 50 points will be scored in the "Yaht-');
  OutTextXY(0,50, ' zee" row in the first open column.  If');
  OutTextXY(0,60, ' all five dice do not have the same');
  OutTextXY(0,70, ' value a 0 will be scored.  If there');
  OutTextXY(0,80, ' are no available columns a message');
  OutTextXY(0,90, ' will be displayed and a beep will');
  OutTextXY(0,100,' sound.  You will be returned to the');
  OutTextXY(0,110,' scoring menu to make another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure ChanceHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10,'{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30,' The total of all dice will be scored');
  OutTextXY(0,40,' in the "Chance" row in the first open');
  OutTextXY(0,50,' column.  If there are no available');
  OutTextXY(0,60,' columns a message will be displayed');
  OutTextXY(0,70,' and a beep will sound.  You will be');
  OutTextXY(0,80,' returned to the scoring menu to make');
  OutTextXY(0,90,' another choice.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;

procedure QuitScorHelp;
begin
  SetMenuPort;
  ClearviewPort;
  OutTextXY(0,10, '{--- Help: hit ESC to continue game ---}');
  OutTextXY(0,30, ' If you change your mind and do not');
  OutTextXY(0,40, ' want to score your dice, but want to');
  OutTextXY(0,50, ' roll again, press "Q".  The game will');
  OutTextXY(0,60, ' return to the main menu, provided you');
  OutTextXY(0,70, ' have not used all three rolls yet.  If');
  OutTextXY(0,80, ' you have, a message will be displayed');
  OutTextXY(0,90, ' informing you of this and a beep will');
  OutTextXY(0,100,' sound.  Pressing "Q" will not end the');
  OutTextXY(0,110,' game, it will merely return you to the');
  OutTextXY(0,120,' main menu.');
  while GetKeyCmd2 <> ESC do
    Beep;
end;


  { no initialization }
end.