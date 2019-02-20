program play;

uses
  Notes, MyString;

var
  filename: string;
  Line2Play, dummy: integer;
  NoteFile: file of NoteRec;
  Note: NoteRec;
  Done: boolean;
  KeyHit: char;

begin
  filename := UpStr(paramstr(1));
  if paramcount > 1 then
    val(paramstr(2), Line2Play, dummy)
  else
    Line2Play := 1;
  if pos(filename, '.JMF') = 0 then
    filename := concat(filename, '.JMF');
{$I-}
  assign(NoteFile, filename);
  reset(NoteFile);
{$I-}
  if ioresult <> 0 then begin
    writeln('  * * * ERROR:  could not open ', filename, ' * * *');
    halt(0);
  end;

  while NOT (Done OR eof(NoteFile)) do begin
    read(NoteFile, Note);
    if Note.NoteArray[Line2Play] <> 1 then
      PlayNote(Note.NoteArray[Line2Play]);
    Wait(Note.Dur);
    read(NoteFile, Note);
    if Note.NoteArray[Line2Play] = 2 then
      EndNote;
    Wait(Note.Dur);
    if MyKeyPressed then begin
      KeyHit := MyReadKey;
      if (KeyHit >= '1') AND (KeyHit <= '8') then begin
        Line2Play := ord(KeyHit) - ord('0');
        writeln('Changing to play voice #', Line2Play, '.');
        writeln('  NOTE:  this voice may not be active');
      end else
        Done := TRUE;
    end;
  end;
  EndNote;

  while MyKeyPressed do
    MyReadKey;
  close(NoteFile);
end.