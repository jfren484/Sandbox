{ Jay French
  HuffTree.pas
  11/26/1994 }

unit HuffTree;

interface

type
  TTracker = object
   private
    TotalCount: longint;
    CharStat: array[0..255] of record
      Count: longint;
      Freq: double;
    end;
   public
    constructor Init;
    procedure Inc(Which: byte);
    procedure FigureFreqs;
    function GetTotalCount: longint;
    function GetCount(Which: byte): longint;
    function GetFreq(Which: byte): double;
    procedure Print;
  end;

  THuffCode = record
    Code: array[0..7] of longint;
    CodeBits: byte;
  end;

  PHuffNode = ^THuffNode;
  THuffNode = record
    Child0, Child1: PHuffNode;
    Char: integer;
  end;

  THuffmanTree = object
   private
    Head, Cur: PHuffNode;
    CharCodes: array[0..255] of THuffCode;
   public
    constructor Build(Tracker: TTracker);
    destructor Destroy;
    procedure Reset;
    function Choose(Bit: byte): integer;
    procedure GetCode(Which: byte; var HuffCode: THuffCode);
   private
    procedure Kill(var Node: PHuffNode);
    procedure Sort(var A: array of double;
                   var P: array of PHuffNode; Num: word);
    procedure Combine(var F0, F1: double; var P0, P1: PHuffNode);
    function SetFreq(i: byte; T: TTracker; var Freq: double;
                                                 var P: PHuffNode): boolean;
    procedure AssignCodes(P: PHuffNode; var History: THuffCode);
  end;

implementation

uses
  TwoPower, crt;

{ TTracker object }
constructor TTracker.Init;
var
  i: byte;
begin
  TotalCount := 0;
  for i := 0 to 255 do begin
    CharStat[i].Count := 0;
    CharStat[i].Freq := 0;
  end;
end;

procedure TTracker.Inc(Which: byte);
begin
  with CharStat[Which] do begin
    Count := Count + 1;
    TotalCount := TotalCount + 1;
  end;
end;

procedure TTracker.FigureFreqs;
var
  i: byte;
begin
  for i := 0 to 255 do
    CharStat[i].Freq := CharStat[i].Count / TotalCount;
end;

function TTracker.GetTotalCount: longint;
begin
  GetTotalCount := TotalCount;
end;

function TTracker.GetCount(Which: byte): longint;
begin
  GetCount := CharStat[Which].Count;
end;

function TTracker.GetFreq(Which: byte): double;
begin
  GetFreq := CharStat[Which].Freq;
end;

procedure TTracker.Print;
var
  i: byte;
begin
  for i := 0 to 255 do with CharStat[i] do
    writeln('Char: ', i:3, '  Count: ', Count, '  Frequency: ', Freq:8:6);
end;

{ THuffmanTree object }
constructor THuffmanTree.Build(Tracker: TTracker);
var
  i: byte;
  NumFreqs: word;
  FreqArray: array[0..255] of double;
  Pointers: array[0..255] of PHuffNode;
  History: THuffCode;
begin
  NumFreqs := 0;
  for i := 0 to 255 do
    if SetFreq(i, Tracker, FreqArray[NumFreqs], Pointers[NumFreqs]) then
      inc(NumFreqs);

  if NumFreqs < 256 then
    for i := NumFreqs to 255 do begin
      FreqArray[i] := 1;
      Pointers[i] := nil;
    end;

  Sort(FreqArray, Pointers, NumFreqs);
  while NumFreqs > 1 do begin
    Combine(FreqArray[0], FreqArray[1], Pointers[0], Pointers[1]);
    Sort(FreqArray, Pointers, NumFreqs);
    dec(NumFreqs);
  end;

  Head := Pointers[0];
  History.CodeBits := 0;
  for i := 0 to 7 do
    History.Code[i] := 0;
  AssignCodes(Head, History);
end;

destructor THuffmanTree.Destroy;
begin
  Kill(Head);
  Head := nil;
  Cur := nil;
end;

procedure THuffmanTree.Reset;
begin
  Cur := Head;
end;

function THuffmanTree.Choose(Bit: byte): integer;
begin
  if (Cur^.Child0 <> nil) AND (Cur^.Child1 <> nil) then
    case Bit of
      0: Cur := Cur^.Child0;
      1: Cur := Cur^.Child1;
    end;

  Choose := Cur^.Char;
end;

procedure THuffmanTree.GetCode(Which: byte; var HuffCode: THuffCode);
begin
  HuffCode := CharCodes[Which];
end;

procedure THuffmanTree.Kill(var Node: PHuffNode);
var P: PHuffNode;
begin
  if Node^.Child0 <> nil then
    Kill(Node^.Child0);
  if Node^.Child1 <> nil then
    Kill(Node^.Child1);
  P := Node;
  Dispose(P);
end;

procedure THuffmanTree.Sort(var A: array of double;
                                      var P: array of PHuffNode; Num: word);
var
  i, j: longint;
  TempD: double;
  TempP: pointer;
begin
  for i := Num - 2 downto 0 do
    for j := 0 to i do
      if A[j] > A[j+1] then begin
        TempD := A[j];
        TempP := P[j];
        A[j] := A[j+1];
        P[j] := P[j+1];
        A[j+1] := TempD;
        P[j+1] := TempP;
      end;
end;

procedure THuffmanTree.Combine(var F0, F1: double; var P0, P1: PHuffNode);
var
  P: PHuffNode;
begin
  new(P);
  with P^ do begin
    Child0 := P0;
    Child1 := P1;
    Char := -1;
  end;
  F0 := F0 + F1;
  P0 := P;
  F1 := 1;
  P1 := nil;
end;

function THuffmanTree.SetFreq(i: byte; T: TTracker; var Freq: double;
                                                 var P: PHuffNode): boolean;
var
  D: double;
begin
  D := T.GetFreq(i);
  SetFreq := false;
  if D > 0 then begin
    Freq := D;
    new(P);
    with P^ do begin
      Child0 := nil;
      Child1 := nil;
      Char := i;
    end;
    SetFreq := true;
  end;
end;

  { used for THuffmanTree.AssignCodes }
  procedure SetBit(var What: longint; Which: byte);
  begin
    What := What OR TwoToThe(Which);
  end;

  procedure ClearBit(var What: longint; Which: byte);
  begin
    What := What AND ($FFFFFFFF - TwoToThe(Which));
  end;

procedure THuffmanTree.AssignCodes(P: PHuffNode; var History: THuffCode);
var
  i: byte;
begin
  with P^ do begin
    if (Child0 <> nil) AND (Child1 <> nil) then begin
      with History do begin
        inc(CodeBits);
        SetBit(Code[CodeBits div 32], CodeBits mod 32 - 1);
      end;
      AssignCodes(Child1, History);
      with History do
        ClearBit(Code[CodeBits div 32], CodeBits mod 32 - 1);
      AssignCodes(Child0, History);
      dec(History.CodeBits);
    end else
      CharCodes[Char] := History;
  end;
end;


{ initialization }
end.