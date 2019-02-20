program Kill_Slaves;

uses
  Notes, MyString, ipxo, types;

const
  Note3: NoteRec = (NoteArray:(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3));

var
  MyIPX: ipx;
  A: Replybuffer;
  j: byte;

begin
  if (MyIPX.open($4500, 10, 10) = 0) then begin
    MyIPX.GetInternetworkAddress(A);
    for j := 0 to 5 do
      A.node[j] := $FF;
    MyIPX.set_destination(A.node, A.network);
    MyIPX.send(pchar(@Note3.NoteArray), sizeof(Note3.NoteArray));
  end else
    writeln('  *** ERROR:  socket not opened ***');
end.