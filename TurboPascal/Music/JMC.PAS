program JayMusicCompile;

{$I-}

uses Notes;

var
  input: text;
  output: file of NoteRec;

  function OpenFiles(InName: string; var OutName: string): byte;
  var
    temp: string;
    i: integer;
  begin
    OpenFiles := 0;
    assign(input, InName);
    reset(input);
    if ioresult <> 0 then begin
      OpenFiles := 1;
      OutName := '';
    end else begin
      i := pos('.', InName);
      if i = 1 then begin
        temp := concat('  ', copy(InName, 3, length(InName) - 2));
        i := pos('.', temp);
      end;
      if i > 0 then
        OutName := concat(copy(InName, 1, i), 'JMF')
      else
        OutName := concat(InName, '.JMF');
      assign(output, outname);
      rewrite(output);
      if ioresult <> 0 then
        OpenFiles := 2;
    end;
  end;

  procedure EatTrash;
  var
    Ch: char;
  begin
    repeat
      read(input, Ch);
      if (Ch = '{') then
        repeat
          read(input, Ch);
        until Ch = '}';
    until Ch = '|';
  end;


var
  outname, Line: string;
  Done, Ok: boolean;
  DetCh, Dummy: char;
  BPM, NumVoices, TopTime, BotTime, WrittenIn, v, NotesToWrite, MidOct: byte;
  DelayRate: word;
  VoicesArray: array[1..MAXVOICES, 1..50] of word;
  Note: NoteRec;

  procedure InitVars;
  begin
    BPM := 80;
    NumVoices := 4;
    TopTime := 4;
    BotTime := 4;
    WrittenIn := 4;
    MidOct := 3;
  end;

  procedure UpdateDR;
  begin
    DelayRate := round(1000 / ((BPM / 60) * (WrittenIn / BotTime)));
  end;

  procedure UpdateNTW;
  begin
    NotesToWrite := round(TopTime * (WrittenIn / BotTime));
  end;

  procedure ClearVA;
  var
    i, j: byte;
  begin
    for i := 1 to MAXVOICES do
      for j := 1 to 50 do
        VoicesArray[i, j] := 0;
  end;

  procedure DoLine(WhichVoice: byte);
  var
    i, index, Len, WhichNote: byte;
  begin
    readln(input, Line);
    delete(Line, length(Line), 1);
    index := 1;
    WhichNote := 1;
    Len := length(Line);
    for i := 1 to Len div 4 do begin
      case Line[1] of
        'C': index := C;
        'D': index := D;
        'E': index := E;
        'F': index := F;
        'G': index := G;
        'A': index := A;
        'B': index := B;
        'R': index := R;
        else
          index := 0;
      end;
      case Line[2] of
        '#': inc(index);
        'b': dec(index);
      end;
      if index > 0 then
        if index = 1 then
          VoicesArray[WhichVoice, WhichNote] := FreqArray[index]
        else
          VoicesArray[WhichVoice, WhichNote] := round(
                 FreqArray[index] * Power2(ord(Line[3]) - ord('0') - MidOct))
      else
        VoicesArray[WhichVoice, WhichNote] := 1;
      inc(WhichNote);
      if Line[4] = '-' then
        VoicesArray[WhichVoice, WhichNote] := 1
      else
        VoicesArray[WhichVoice, WhichNote] := 2;
      delete(Line, 1, 4);
      inc(WhichNote);
    end;
  end;

  procedure WriteArrays;
  var
    i, j: byte;
  begin
    for i := 1 to NotesToWrite do begin
      for j := 1 to MAXVOICES do
        Note.NoteArray[j] := VoicesArray[j, i*2-1];
      Note.Dur := DelayRate;
      write(output, Note);
      for j := 1 to MAXVOICES do
        Note.NoteArray[j] := VoicesArray[j, i*2];
      Note.Dur := 10;
      write(output, Note);
    end;
  end;

  procedure Msg(S: string);
  begin
    writeln(S);
    Done := TRUE;
    Ok := FALSE;
  end;

begin
  Done := TRUE;
  Ok := TRUE;
  case OpenFiles(paramstr(1), outname) of
    0: Done := FALSE;
    1: begin
        writeln('Error opening ', paramstr(1));
        Ok := FALSE;
      end;
    2: begin
        writeln('Error opening ', outname);
        Ok := FALSE;
      end;
  end;

  InitVars;

  while NOT Done do begin
    EatTrash;
    read(input, DetCh);
    case DetCh of
      'B': begin
          readln(input, BPM);
          if ioresult <> 0 then
            Msg('  * * * ERROR reading Beats Per Minute * * *');
          UpdateDR;
        end;
      'M': read(input, MidOct);
      'S': begin
          readln(input, v {Dummy int}, Dummy, Dummy, WrittenIn);
          if ioresult <> 0 then
            Msg('  * * * ERROR reading Size Written in * * *');
          UpdateDR;
          UpdateNTW;
        end;
      'T': begin
          readln(input, TopTime, Dummy, Dummy, BotTime);
          if ioresult <> 0 then
            Msg('  * * * ERROR reading Time Signature * * *');
          UpdateDR;
          UpdateNTW;
        end;
      'V': begin
          readln(input, NumVoices);
          if (ioresult <> 0) OR (NumVoices > MAXVOICES) then
            Msg('  * * * ERROR reading Beats Per Minute * * *');
        end;
      'Q': Done := TRUE;
      '"': begin
          ClearVA;
          v := 1;
          while (v <> NumVoices) AND NOT Done do begin
            DoLine(v);
            EatTrash;
            read(input, DetCh);
            if DetCh <> '"' then
              Msg('  * * * ERROR: invalid Note string! * * *');
            inc(v);
          end;
          DoLine(v);
          WriteArrays;
        end;
    end;
  end;

  write(output, Note0);

  close(input);
  close(output);
  if Ok then
    writeln('  * * * No errors encountered. * * *');
end.