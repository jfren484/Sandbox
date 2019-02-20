{ Jay French
  Jam.pas
  11/26/1994 }

program Jam;

uses
  BitStrm, HuffTree, TwoPower;

  function JAMFile(InFile: string): string;
  var
    Position: byte;
  begin
    Position := pos('.', InFile);
    if Position > 0 then
      delete(InFile, Position, length(InFile) - Position);
    InFile := concat(InFile, '.JAM');
    JAMFile := InFile;
  end;

var
  OStream: TOBitStream;
  Tracker: TTracker;

  procedure WriteTracker;
    procedure PutCount(Count: longint);
    begin
      if Count < 128 then begin
        OStream.PutBits(1, 0);
        OStream.PutBits(7, Count);
      end else if Count < 16384 then begin
        OStream.PutBits(2, 1);
        OStream.PutBits(14, Count);
      end else begin
        OStream.PutBits(2, 3);
        OStream.PutBits(30, Count);
      end;
    end;
  var
    i: byte;
    NumFreqs: word;
  begin
    NumFreqs := 0;
    for i := 0 to 255 do
      if Tracker.GetCount(i) > 0 then
        inc(NumFreqs);
    OStream.PutBits(8, NumFreqs - 1);
    for i := 0 to 255 do
      if Tracker.GetCount(i) > 0 then begin
        OStream.PutBits(8, i);
        PutCount(Tracker.GetCount(i));
      end;
  end;

var
  InputFile: file;
  Tree: THuffmanTree;
  Huff: THuffCode;
  Char, ReturnCode, i: byte;
  Written, ReportBy: longint;

begin
  { File Stuff }
  if ParamCount < 1 then begin
    writeln('Usage: JAM <FileName>');
    halt(0);
  end;
  assign(InputFile, ParamStr(1));
{$I-}
  reset(InputFile, 1);
  if IOResult <> 0 then begin
    writeln('Cannot open ', ParamStr(1));
    halt(0);
  end;
{$I+}

  { First Pass }
  Tracker.Init;
  writeln;
  while NOT eof(InputFile) do begin
    blockread(InputFile, Char, 1);
    Tracker.Inc(Char);
    if Tracker.GetTotalCount mod 1024 = 0 then begin
      write(#13, 'Read: ', Tracker.GetTotalCount div 1024:10, 'k');
    end;
  end;
  writeln(#13, 'Total bytes read:  ', Tracker.GetTotalCount);

  { Calculate the frequencies }
  Tracker.FigureFreqs;
  { Build the Huffman Code Tree and store the codes }
  writeln('Building Tree . . .');
  Tree.Build(Tracker);
  { We can destroy the dynamic part of the tree now }
  Tree.Destroy;

  { Open the output bitstream }
  OStream.Init(JAMFile(ParamStr(1)), ReturnCode);
  if ReturnCode <> 0 then
    writeln('Could not open output file.')
  else begin
    WriteTracker;
    reset(InputFile, 1);
    { Second Pass }
    Written := 0;
    ReportBy := Tracker.GetTotalCount div 20;
    writeln('Writing JAMMED file . . .');
    while NOT eof(InputFile) do begin
      blockread(InputFile, Char, 1);
      Tree.GetCode(Char, Huff);
      for i := 0 to (Huff.CodeBits - 1) div 32 do
        if Huff.CodeBits >= 32 * (i + 1) then
          OStream.PutBits(32, Huff.Code[i])
        else
          OStream.PutBits(Huff.CodeBits mod 32, Huff.Code[i]);
      inc(Written);
      if Written mod ReportBy = 0 then
        write(#13, Written / Tracker.GetTotalCount * 100:3:0, '%')
    end;
    writeln(#13, (OStream.GetBitsPut/8) / Tracker.GetTotalCount*100:3:0, '%');
    OStream.Done;
  end;
end.