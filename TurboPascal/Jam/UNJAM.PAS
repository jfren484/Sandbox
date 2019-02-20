{ Jay French
  UnJam.pas
  11/26/1994 }

program UnJam;

uses
  BitStrm, HuffTree, TwoPower;

var
  IStream: TIBitStream;
  Tracker: TTracker;

  procedure GetTracker; { procedure to get the file header info }

    function GetCount: longint;  { returns the count of a character }
    var
      B, TempCount: longint;
    begin
      IStream.GetBits(1, B);
      if B = 0 then
        IStream.GetBits(7, TempCount)
      else begin
        IStream.GetBits(1, B);
        if B = 0 then
          IStream.GetBits(14, TempCount)
        else
          IStream.GetBits(30, TempCount);
      end;
      GetCount := TempCount;
    end;

  var
    NumFreqs, i: word;
    Count, j: longint;
    Char: byte;
  begin
    IStream.GetBits(8, Count);
    NumFreqs := Count + 1;
    for i := 1 to NumFreqs do begin
      IStream.GetBits(8, Count);
      Char := Count;
      Count := GetCount;
      for j := 1 to Count do
        Tracker.Inc(Char);
    end;
  end;

var
  OutputFile: file;
  Tree: THuffmanTree;
  Huff: THuffCode;
  Char, ReturnCode, i: byte;
  Written, ReportBy, L: longint;
  Int: integer;

begin
  { File Stuff }
  if ParamCount < 2 then begin
    writeln('Usage: UNJAM <JamFile> <FileName>');
    halt(0);
  end;

  IStream.Init(ParamStr(1), ReturnCode);
  if ReturnCode <> 0 then begin
    writeln('Could not open Jammed File.');
    halt(0);
  end;
  assign(OutputFile, ParamStr(2));
{$I-}
  rewrite(OutputFile, 1);
  if IOResult <> 0 then begin
    writeln('Cannot write to ', ParamStr(2));
    halt(0);
  end;
{$I+}

  Tracker.Init;
  GetTracker;
  Tracker.FigureFreqs;
  { Build the Huffman Code Tree and store the codes }
  writeln('Rebuilding Tree . . .');
  Tree.Build(Tracker);

  Written := 0;
  ReportBy := Tracker.GetTotalCount div 20;
  while IStream.GetBits(1, L) AND (Written < Tracker.GetTotalCount) do begin
    Tree.Reset;
    Int := Tree.Choose(byte(L));
    while Int < 0 do begin
      IStream.GetBits(1, L);
      Int := Tree.Choose(byte(L));
    end;
    blockwrite(OutputFile, byte(Int), 1);
    inc(Written);
    if Written mod ReportBy = 0 then
      write(#13, Written / Tracker.GetTotalCount * 100:3:0, '%');
  end;
  writeln(#13, 'Done!');

  close(OutputFile);
  IStream.Done;
  Tree.Destroy;
end.