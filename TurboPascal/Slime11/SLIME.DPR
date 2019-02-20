program Slime;

uses
  Forms,
  Slimunit in 'SLIMUNIT.PAS' {Form1},
  About in 'ABOUT.PAS' {AboutBox},
  Players in 'PLAYERS.PAS' {PlayerDlg};

{$R *.RES}

begin
  Application.Title := 'Slime 1.1';
  Application.HelpFile := 'C:\DELPHI\HELP\SLIME11.HLP';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TPlayerDlg, PlayerDlg);
  Application.Run;
end.
