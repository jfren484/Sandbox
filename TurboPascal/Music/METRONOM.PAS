program Metronome;
uses
  crt;

const
  ESC   =  27;
  UPARR = -72;
  DNARR = -80;
  PGUP  = -73;
  PGDN  = -81;

  function GetKeyCmd: integer;
  var
    temp: integer;
  begin
    temp := ord(readkey);
    if temp = 0 then
      temp := temp - ord(readkey);
    GetKeyCmd := temp;
  end;

var
  save: word;

  procedure HideCursor; assembler;
  asm
    mov ah,3
    int 10h
    mov save,cx
    mov ah,1
    mov cx,0100h
    int 10h
  end;

  procedure ShowCursor; assembler;
  asm
    mov ah,1
    mov cx,save
    int 10h
  end;

var
  BeatsPerMinute: byte;
  DelayTime: word;
  Done: boolean;

  procedure ShowBox;
  begin
    gotoxy(38, 10);
    write('ллллл');
    gotoxy(38, 11);
    write('ллллл');
    gotoxy(38, 12);
    write('ллллл');
  end;

  procedure HideBox;
  begin
    gotoxy(38, 10);
    write('     ');
    gotoxy(38, 11);
    write(' ', BeatsPerMinute:3, ' ');
    gotoxy(38, 12);
    write('     ');
  end;

begin
  HideCursor;
  clrscr;
  Done := FALSE;
  BeatsPerMinute := 90;
  DelayTime := round(1000 / (BeatsPerMinute / 60)) - 50;
  while NOT Done do begin
    sound(500);
    ShowBox;
    delay(50);
    HideBox;
    nosound;
    delay(DelayTime);
    while keypressed do
      case GetKeyCmd of
        ESC: Done := TRUE;
        UPARR: if BeatsPerMinute < 200 then begin
            inc(BeatsPerMinute);
            DelayTime := round(1000 / (BeatsPerMinute / 60)) - 50;
          end;
        DNARR: if BeatsPerMinute > 20 then begin
            dec(BeatsPerMinute);
            DelayTime := round(1000 / (BeatsPerMinute / 60)) - 50;
          end;
        PGUP: if BeatsPerMinute <= 290 then begin
            inc(BeatsPerMinute, 10);
            DelayTime := round(1000 / (BeatsPerMinute / 60)) - 50;
          end;
        PGDN: if BeatsPerMinute >= 30 then begin
            dec(BeatsPerMinute, 10);
            DelayTime := round(1000 / (BeatsPerMinute / 60)) - 50;
          end;
      end;
  end;

  while keypressed do
    readkey;

  ShowCursor;
end.
