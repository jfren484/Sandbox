{ Jay French
  BitStrm.pas
  11/26/1994 }

unit BitStrm;

interface

type
  TBitStream = object
   private
    BitFile: file;                         { Handle to the file }
    BitArray: array[0..2] of word;         { Array of 48 bits for buffering }
    NumBits: shortint;                     { Number of bits in the buffer }
   public
    destructor Done;
   private
    function ShiftArray(ShiftIn: byte): byte;
  end;

  TOBitStream = object(TBitStream)     { Output BitStream }
   private
    BitsPut: comp;
   public
    constructor Init(OutputFile: string; ReturnCode: byte);
    destructor Done; virtual;
    procedure PutBits(HowMany: byte; Source: longint);
    function GetBitsPut: comp;
   private
    procedure ShiftArray(ShiftIn: byte); virtual;
  end;

  TIBitStream = object(TBitStream)     { Input BitStream }
   private
    EndOfFile: boolean;                     { True when file completely read }
   public
    constructor Init(InputFile: string; ReturnCode: byte);
    function GetBits(HowMany: byte; var Dest: longint): boolean;
   private
    function ShiftArray(var ShiftOut: byte): boolean; virtual;
  end;

implementation

uses
  TwoPower;

const
  MAXBITS = 48;

destructor TBitStream.Done;
begin
  close(BitFile);
end;

function TBitStream.ShiftArray(ShiftIn: byte): byte;
var
  i, ShiftOut: byte;
begin
  for i := 0 to 2 do begin
    ShiftOut := (BitArray[i] AND $8000) div $8000;
    BitArray[i] := (BitArray[i] AND $7FFF) * 2 + ShiftIn;
    ShiftIn := ShiftOut;
  end;
  ShiftArray := ShiftOut;
end;

constructor TOBitStream.Init(OutputFile: string; ReturnCode: byte);
begin
  NumBits := 0;
  BitsPut := 0;
{$I-}
  assign(BitFile, OutputFile);
  rewrite(BitFile, 2);
  ReturnCode := IOResult;
{$I+}
end;

destructor TOBitStream.Done;
var
  Junk: longint;
begin
  PutBits(NumBits mod 16, Junk);
  PutBits(32, Junk);
  TBitStream.Done;
end;

procedure TOBitStream.PutBits(HowMany: byte; Source: longint);
var
  i: byte;
begin
  if HowMany > 0 then
    for i := 0 to HowMany - 1 do
      ShiftArray((Source AND TwoToThe(i)) div TwoToThe(i));
  BitsPut := BitsPut + HowMany;
end;

function TOBitStream.GetBitsPut: comp;
begin
  GetBitsPut := BitsPut;
end;

procedure TOBitStream.ShiftArray(ShiftIn: byte);
begin
  TBitStream.ShiftArray(ShiftIn);

  inc(NumBits);
  if NumBits = 48 then begin
    blockwrite(BitFile, BitArray[2], 1);
    NumBits := 32;
  end;
end;

constructor TIBitStream.Init(InputFile: string; ReturnCode: byte);
var
  i: byte;
begin
  NumBits := 0;
  EndOfFile := false;
{$I-}
  assign(BitFile, InputFile);
  reset(BitFile, 2);
  ReturnCode := IOResult;
{$I+}

  if ReturnCode = 0 then begin
    for i := 2 downto 0 do
      blockread(BitFile, BitArray[i], 1);
    NumBits := 48;
  end;
end;

function TIBitStream.GetBits(HowMany: byte; var Dest: longint): boolean;
var
  i, Bit: byte;
begin
  Dest := 0;
  i := 0;
  while (i < HowMany) AND ShiftArray(Bit) do begin
    Dest := Dest OR (TwoToThe(i) * Bit);
    inc(i);
  end;

  GetBits := (i = HowMany);
end;

function TIBitStream.ShiftArray(var ShiftOut: byte): boolean;
var
  ShiftIn: byte;
  Result: word;
begin
  ShiftIn := 0;
  ShiftOut := TBitStream.ShiftArray(ShiftIn);

  dec(NumBits);
  if NumBits = 32 then begin
    blockread(BitFile, BitArray[0], 1, Result);
    if Result <> 0 then
      NumBits := 48
    else
      EndOfFile := true;
  end;

  ShiftArray := (NumBits >= 0);
end;

{ initialization }
end.