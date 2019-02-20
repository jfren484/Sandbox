program PlayJMF;

uses
  Notes, MyString, ipxo, types;

type
  PNListRec = ^TNListRec;
  TNListRec = record
    N: NoteRec;
    Next: PNListRec;
  end;

const
  Note3: NoteRec = (NoteArray:(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3));

var
  filename: string;
  NoteFile: file of NoteRec;
  NRListItem, NRFirstItem: PNListRec;
  NumItems: word;
  Note: NoteRec;
  Done: boolean;
  j: byte;
  MyIPX: ipx;
  A: ReplyBuffer;

  procedure ReadNoteFile;
  begin
    read(NoteFile, Note);
    new(NRListItem);
    NRListItem^.N := Note;
    NRListItem^.Next := nil;

    NRFirstItem := NRListItem;
    NumItems := 1;

    while NOT eof(NoteFile) do begin
      read(NoteFile, Note);
      new(NRListItem^.Next);
      NRListItem := NRListItem^.Next;
      NRListItem^.N := Note;
      NRListItem^.Next := nil;

      inc(NumItems);
    end;

    NRListItem := NRFirstItem;
  end;

  function GetNextNote(var Rec: NoteRec): boolean;
  begin
    if NRListItem <> nil then begin
      Rec := NRListItem^.N;
      NRListItem := NRListItem^.Next;
      GetNextNote := TRUE;
    end else
      GetNextNote := FALSE;
  end;

  procedure KillList(Rec: PNListRec);
  begin
    if Rec^.Next <> nil then
      KillList(Rec^.Next);
    dispose(Rec);
  end;

begin
  filename := UpStr(paramstr(1));
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

  writeln('Loading ', filename, ' into memory.');
  ReadNoteFile;
  writeln('Loading complete.');
  close(NoteFile);

  asm
    mov ah,0d7h
    int 21h
  end;

  if (MyIPX.open($4500, 10, 10) = 0) then begin
    MyIPX.GetInternetworkAddress(A);
    for j := 0 to 5 do
      A.node[j] := $FF;
    MyIPX.set_destination(A.node, A.network);

    Done := NOT GetNextNote(Note);
    while NOT Done do begin
      MyIPX.send(pchar(@Note.NoteArray), sizeof(Note.NoteArray));
      Wait(Note.Dur);

      Done := MyKeyPressed OR NOT GetNextNote(Note);
    end;
    MyIPX.send(pchar(@Note0.NoteArray), sizeof(Note0.NoteArray));
  end else
    writeln('  *** ERROR:  socket not opened ***');

  KillList(NRFirstItem);
  while MyKeyPressed do
    MyReadKey;
  MyIPX.send(pchar(@Note3.NoteArray), sizeof(Note3.NoteArray));
end.