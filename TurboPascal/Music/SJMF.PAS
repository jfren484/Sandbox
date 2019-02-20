{ Program SlaveJMF (SJMF):  helps play .JMF files on a network
  Author:  Jay French
  Date:  4/94
}
program SlaveJMF;

uses
  Notes, ipxo;

  function atoi(Str: string): integer;
  var
    Int, Code: integer;
  begin
    val(Str, Int, Code);
    if Code <> 0 then
      atoi := 0
    else
      atoi := Int;
  end;

type
  TFreqArray = array[1..8] of word;

var
  PFreqArray: ^TFreqArray;
  Value: word;
  Line2Play: byte;
  MyIPX: ipx;
  Done: boolean;
  KeyHit: char;

begin
  asm
    mov ah,0d7h
    int 21h
  end;
  Line2Play := atoi(paramstr(1));
  if (Line2Play = 0) then
    Line2Play := 1;
  if (MyIPX.open($4500, 20, 40) = 0) then begin
    MyClrScr;
    new(PFreqArray);
    Done := FALSE;
    while NOT Done do begin
      if (MyIPX.receive = 0) then begin
        PFreqArray := @MyIPX.receive_buffer;
        case PFreqArray^[Line2Play] of
          0: begin
              Value := 0;
              EndNote;
            end;
          1: PlayNote(Value);
          2: EndNote;
          3: Done := TRUE;
          else begin
            Value := PFreqArray^[Line2Play];
            PlayNote(Value);
          end; { end else }
        end; { end case statement }
      end; { end if received }
      if MyKeyPressed then begin
        KeyHit := MyReadKey;
        if (KeyHit >= '1') AND (KeyHit <= '8') then begin
          Line2Play := ord(KeyHit) - ord('0');
          writeln('Changing to play voice #', Line2Play, '.');
          writeln('  NOTE:  this voice may not be active');
        end else
          Done := TRUE;
      end;
    end; { end while }
    EndNote;
    while MyKeyPressed do
      MyReadKey;
    dispose(PFreqArray);
    MyClrScr;
  end else
    writeln('  *** ERROR: socket not opened ***');
end.