unit Players;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, Buttons,
  StdCtrls, ExtCtrls, Dialogs;

type
  TPlayerDlg = class(TForm)
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    HelpBtn: TBitBtn;
    Bevel1: TBevel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    ColorLabel1: TLabel;
    ColorLabel2: TLabel;
    ColorDialog1: TColorDialog;
    procedure ColorLabel1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlayerDlg: TPlayerDlg;

implementation

{$R *.DFM}

procedure TPlayerDlg.ColorLabel1DblClick(Sender: TObject);
begin
  with Sender as TLabel do begin
    ColorDialog1.Color := Color;
    if ColorDialog1.Execute then
      if ColorDialog1.Color = clWhite then begin
        MessageBeep(MB_ICONHAND);
        MessageDlg('Color cannot be White!', mtWarning, [mbOK], 0);
      end else
        Color := ColorDialog1.Color;
  end;
end;

procedure TPlayerDlg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ColorLabel1.Color = ColorLabel2.Color then begin
    MessageBeep(MB_ICONHAND);
    MessageDlg('Colors cannot be the same!', mtWarning, [mbOK], 0);
    CanClose := false;
  end else
    CanClose := true;
end;

end.
