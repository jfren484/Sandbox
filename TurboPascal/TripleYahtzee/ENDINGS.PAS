unit Endings;

interface

procedure StartScreen;
procedure DoneScreen;

implementation

uses
  graph, crt, Stringer;

procedure StartScreen;
begin
  SetTextJustify(CenterText,CenterText);
  SetTextStyle(7,HorizDir,6);
  OutTextXY(320,60,'TRIPLE');
  SetTextStyle(4,HorizDir,10);
  SetColor(LightBlue);
  OutTextXY(320,140,'Yahtzee');
  SetColor(White);
  SetTextStyle(5,HorizDir,4);
  OutTextXY(320,250,'Programmed By:');
  SetTextStyle(5,HorizDir,5);
  OutTextXY(320,290,'Jay French');
  SetTextStyle(8,HorizDir,1);
  OutTextXY(320,385,'This product may be reproduced');
  OutTextXY(320,405,'free of charge, but it may not be');
  OutTextXY(320,425,'sold for profit, for any cause.');
  SetColor(LightBlue);
  SetTextStyle(0,HorizDir,0);
  OutTextXY(320,460,'Hit Any Key To Begin');
  SetTextJustify(LeftText,TopText);
  SetTextStyle(0,HorizDir,1);
  SetColor(White);
  GetKeyCmd2;
  ClearViewPort;
end;

procedure DoneScreen;
begin
  SetTextJustify(CenterText,CenterText);
  SetTextStyle(7,HorizDir,4);
  OutTextXY(320,80,'Program written by:           ');
  SetTextStyle(4,HorizDir,8);
  SetColor(LightBlue);
  OutTextXY(320,144,'Jay French');
  SetColor(White);
  SetTextStyle(1,HorizDir,2);
  OutTextXY(330,240,
       'If you enjoy this program a $10.00 contribution would be');
  OutTextXY(330,288,
       'appreciated.  Contributions or questions may be mailed to:');
  SetTextJustify(LeftText,CenterText);
  SetTextStyle(0,HorizDir,1);
  OutTextXY(225,335,'Jay French');
  OutTextXY(225,350,'33 Ashlee Dr.');
  OutTextXY(225,365,'Peterboro, NH  03458');
  GetKeyCmd2;
end;


end.