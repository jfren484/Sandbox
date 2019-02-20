{==========================================================================
	UNIT: IPXLib; John Visser, author
	NOTE: I changed parameters passed by pointer to pass by reference using the
				Pascal Var keyword.
				I could type the InUseFlag variable in the ECB structure as a boolean
				rather than an byte (unsigned char), but I did not.
===========================================================================}
unit ipxlib;
interface
uses types;

const
	TEMPORARY_SOCKET = $0;
	PERMANENT_SOCKET = $FF;
	OKAY             = $0;
	IPX_INT_NUM      = $7A;

type
	IPXObject = object
		function  OpenSocket ( var socketNumber : SocketNumberType;
													 socketType : Byte ) : Integer;
		procedure CloseSocket ( socketNumber : SocketNumberType );
		function  GetLocalTarget ( var networkAddress : RequestBuffer;
															 var immediateAddress : NodeNumberType;
															 var transportTime : Word ) : Integer;
		procedure SendPacket ( var eventControlBlock : ECB );
		procedure ListenForPacket ( var eventControlBlock : ECB );
		procedure ScheduleIPXEvent ( timeUnits : Word;
																 var eventControlBlock : ECB );
		function  CancelEvent ( var eventControlBlock : ECB ) : Integer;
		function  ScheduleSpecialEvent ( timeUnits : Word;
																		 var eventControlBlock : ECB ) : Integer;
		function  GetIntervalMarker : Integer;
		procedure GetInternetworkAddress ( var networkAddress : ReplyBuffer );
		procedure RelinquishControl;
		procedure DisconnectFromTarget ( var networkAddress : RequestBuffer );
		procedure GetProcAddress ( proc : Pointer; var addressField : Word );
		procedure GetDataAddress ( var data, addressField : Word );
		function  SetupSendPacket ( var eventControlBlock : ECB;
																var IPXpkt : IPXPacket;
																networkAddress : ReplyBuffer;
																Socket : SocketNumberType;
																Buffer : Pointer;
																Buffsize : Word;
																ESR : Pointer ) : integer;
		procedure SetupRcvPacket ( var eventControlBlock : ECB;
															 var IPX : IPXPacket;
															 Socket : SocketNumberType;
															 Buffer : Pointer;
															 Buffsize : Word;
															 ESR : Pointer );
	 end;


implementation
uses Dos;
{=======================================================================
 The Dos unit is needed because it contains the following:
	1.  Registers structure
			type
				Registers = record
					case Integer of
						0: (AX, BX, CX, DX, BP, SI, DI, DS, ES, Flags: Word);
						1: (AL, AH, BL, BH, CL, CH, DL, DH: Byte);
					end;
			(Notes:
				* This is a variant record: Pascal's equivalent of a union.
				* Unlike C, there is no need to have a separate structure for
					the segment registers.)

	2.  Intr procedure
			procedure Intr(IntNo: Byte; var Regs: Registers);
				(Note:
					* Unlike C, you do not specify in and out registers.
						Regs is the in and out registers structure.)
========================================================================}

{------------------------------------------------------------------}
function  IPXObject.OpenSocket ( var socketNumber : SocketNumberType;
																 socketType : Byte ) : Integer;
var
	 Regs : Registers;
begin
	 { Registers In: }
	 Regs.BX := $00;
	 Regs.AL := socketType;    { Socket Longevity Flag }
	 Regs.DX := Swap( socketNumber );  { Requested Socket Number (hi-lo) }

	 Intr( IPX_INT_NUM, Regs );

	 { Registers Out: }
	 OpenSocket := Integer(Regs.AL);

	 { Regs.DX  --  Assigned Socket Number }
	 { John Visser added the following line 02-26-94 }
	 socketNumber := Swap( Regs.DX );

	 { Completion Codes: }
	 { $00 Successful
		 $FF Socket Already Open
		 $FE Socket Table Is Full }
end;

{------------------------------------------------------------------}
procedure IPXObject.CloseSocket ( socketNumber : SocketNumberType );
var
	 Regs : Registers;
begin
	 { Registers In: }
	 Regs.BX := $01;
	 Regs.DX := Swap( socketNumber );  { Socket Number (hi-lo) }

	 Intr( IPX_INT_NUM, Regs );

   { Registers Out: nothing }
   { Completion Codes: none }
end;

{------------------------------------------------------------------}
function  IPXObject.GetLocalTarget ( var networkAddress : RequestBuffer;
																		 var immediateAddress : NodeNumberType;
                                     var transportTime : Word ) : Integer;
var
   Regs : Registers;
	 LNetAddr : RequestBuffer;
   LImmAddr : NodeNumberType;
begin
   { copy to locals to ensure same segment }
   move(networkAddress,LNetAddr,sizeof(LNetAddr));
   move(immediateAddress,LImmAddr,sizeof(LImmAddr));

   { Registers In: }
   Regs.BX := $02;
{   Regs.DS := Seg(networkAddress);   { Request Buffer Address Segment }
   Regs.SI := Ofs(LNetAddr);          { Request Buffer Address Offset) }
   Regs.ES := Seg(LImmAddr);          { Reply Buffer Address Segment }
   Regs.DI := Ofs(LImmAddr);          { Reply Buffer Address Offset) }

   Intr( IPX_INT_NUM, Regs );

	 { Registers Out: }
	 GetLocalTarget := Integer(Regs.AL); { Completion Code }
	 transportTime := Regs.CX; { Transport Time }

	 { copy locals back to vars for return }
	 move(LNetAddr,networkAddress,sizeof(LNetAddr));
	 move(LImmAddr,immediateAddress,sizeof(LImmAddr));

	 { Request Buffer (12 bytes): }
	 { Offset   Content                Type      Order
		 ------   -------------------    -------   -----
		 0        Destination Network    BYTE[4]   hi-lo
		 4        Destination Node       BYTE[6]   hi-lo
		 10       Destination Socket     BYTE[2]   hi-lo }

	 { Reply Buffer (6 bytes): }
	 { Offset   Content                Type
		 ------   -------------------    -------
		 0        Local Target           BYTE[6] }
end;

{------------------------------------------------------------------}
procedure IPXObject.SendPacket ( var eventControlBlock : ECB );
var
	 Regs : Registers;
begin
	 { Registers In: }
	 Regs.BX := $03;
	 Regs.ES := Seg(eventControlBlock); { ECB Address Segment }
	 Regs.SI := Ofs(eventControlBlock); { ECB Address Offset  }

	 Intr( IPX_INT_NUM, Regs );

	 { Registers Out: nothing }
	 { Completion Codes: none }
end;

{------------------------------------------------------------------}
procedure IPXObject.ListenForPacket ( var eventControlBlock : ECB );
var
	 Regs : Registers;
begin
   { Registers In: }
   Regs.BX := $04;
	 Regs.ES := Seg(eventControlBlock); { ECB Address Segment }
   Regs.SI := Ofs(eventControlBlock); { ECB Address Offset  }

   Intr( IPX_INT_NUM, Regs );

   { Registers Out: }
   { AL     Completion Code }

   { Completion Codes: }
   { $FF    Listening Socket Does Not Exist }
end;

{------------------------------------------------------------------}
procedure IPXObject.ScheduleIPXEvent ( timeUnits : Word;
																			 var eventControlBlock : ECB );
var
	 Regs : Registers;
begin
	 { Registers In: }
	 Regs.BX := $05;
	 Regs.AX := timeUnits;   { Delay Time }
	 Regs.ES := Seg(eventControlBlock); { ECB Address Segment }
	 Regs.SI := Ofs(eventControlBlock); { ECB Address Offset  }

	 Intr( IPX_INT_NUM, Regs );

	 { Registers Out: nothing }
	 { Completion Codes: none }
end;

{------------------------------------------------------------------}
function  IPXObject.CancelEvent ( var eventControlBlock : ECB ) : Integer;
var
	 Regs : Registers;
begin
	 { Registers In: }
	 Regs.BX := $06;
	 Regs.ES := Seg(eventControlBlock); { ECB Address Segment }
	 Regs.SI := Ofs(eventControlBlock); { ECB Address Offset  }

	 Intr( IPX_INT_NUM, Regs );

	 { Registers Out: }
	 CancelEvent := Integer(Regs.AL);  { Completion Code }

	 { Completion Codes: }
	 { $00     Successful
		 $F9     ECB Cannot Be Canceled
		 $FF     ECB Not In Use          }
end;

{------------------------------------------------------------------}
function  IPXObject.ScheduleSpecialEvent ( timeUnits : Word;
																					 var eventControlBlock : ECB
																				 ) : Integer;
var
	 Regs : Registers;
begin
	 { Registers In: }
	 Regs.BX := $07;
	 Regs.AX := timeUnits;   { Delay Time }
	 Regs.ES := Seg(eventControlBlock); { ECB Address Segment }
	 Regs.SI := Ofs(eventControlBlock); { ECB Address Offset  }

	 Intr( IPX_INT_NUM, Regs );

	 { Registers Out: }
	 ScheduleSpecialEvent := Integer(Regs.AL);

	 { Completion Codes: }
	 { ? -- They were not in manual }
end;

{------------------------------------------------------------------}
function  IPXObject.GetIntervalMarker : Integer;
var
   Regs : Registers;
begin
   { Registers In: }
   Regs.BX := $08;

   Intr( IPX_INT_NUM, Regs );

   { Registers Out: }
   GetIntervalMarker := Integer(Regs.AX);  { Interval Marker }

   { Completion Codes: none }
end;

{------------------------------------------------------------------}
procedure IPXObject.GetInternetworkAddress ( var networkAddress : ReplyBuffer );
var
	 Regs : Registers;
begin
	 { Registers In: }
   Regs.BX := $09;
   Regs.ES := Seg(networkAddress); { Reply Buffer Address Segment }
   Regs.SI := Ofs(networkAddress); { Reply Buffer Address Offset  }

   Intr( IPX_INT_NUM, Regs );

   { Registers Out: }
   { ES:SI    Reply Buffer Address }

   { Completion Codes: none }

   { Reply Buffer (10 bytes): }
   { Offset   Content                Type      Order
     ------   -------------------    -------   -----
		 0        Network Address        BYTE[4]   hi-lo
		 4        Node Address           BYTE[6]   hi-lo }
end;

{------------------------------------------------------------------}
procedure IPXObject.RelinquishControl;
var
   Regs : Registers;
begin
   { Registers In: }
   Regs.BX := $0A;

   Intr( IPX_INT_NUM, Regs );

   { Registers Out: nothing }
   { Completion Codes: none }
end;

{------------------------------------------------------------------}
procedure IPXObject.DisconnectFromTarget ( var networkAddress : RequestBuffer );
var
	 Regs : Registers;
begin
	 { Registers In: }
	 Regs.BX := $0B;
	 Regs.ES := Seg(networkAddress); { Request Buffer Address Segment }
   Regs.SI := Ofs(networkAddress); { Request Buffer Address Offset  }

   Intr( IPX_INT_NUM, Regs );

   { Registers Out: nothing }
	 { Completion Codes: none }

   { Request Buffer (12 bytes): }
   { Offset   Content                Type      Order
     ------   -------------------    -------   -----
     0        Destination Network    BYTE[4]   hi-lo
     4        Destination Node       BYTE[6]   hi-lo
		 10       Destination Socket     BYTE[2]   hi-lo }
end;

{------------------------------------------------------------------}
procedure IPXObject.GetProcAddress ( proc : Pointer;
																		 var addressField : Word );
begin
	 { I was not given implementation for this procedure. }
	 { So, I do not know if the following is correct.     }
	 addressField := Word(proc);
end;

{------------------------------------------------------------------}
procedure IPXObject.GetDataAddress ( var data, addressField : Word );
begin
   { I was not given implementation for this procedure. }
   { So, I do not know if the following is correct.     }
   addressField := Word(@data);
end;

{------------------------------------------------------------------}
function IPXObject.SetupSendPacket ( var eventControlBlock : ECB;
																		 var IPXpkt : IPXPacket;
																		 networkAddress : ReplyBuffer;
																		 Socket : SocketNumberType;
																		 Buffer : Pointer;
																		 Buffsize : Word;
																		 ESR : Pointer ) : integer;
var
	 ttime : Word;
	 IPXAddr : RequestBuffer;
	 i : integer;
begin
	Move( networkAddress.Network, IPXAddr.Network, SizeOf(NetworkNumberType) );
	Move( networkAddress.Node,    IPXAddr.Node,    SizeOf(NodeNumberType) );

	IPXAddr.Socket        := Swap(Socket);
	IPXpkt.PacketType     := 4; { IPX Packet }

	with eventControlBlock do begin
		ESRAddress          := ESR;
		InUseFlag           := 0;
		ECBSocket           := Swap( Socket );
		FragmentCount       := 2;

		{ Fragment 0 points to the IPX Packet Header }
		Fragment[0].Address := @IPXpkt;
		Fragment[0].Size    := Word(SizeOf(IPXpkt));

		{ Fragment 1 points to the actual data to transfer }
		Fragment[1].Address := Buffer;
		Fragment[1].Size    := Buffsize;
	 end; { with }

	 { Now we need to find the next closest bridge to transmit to }
	 SetupSendPacket := GetLocalTarget( IPXAddr,
																			eventControlBlock.ImmediateAddress,
																			ttime );

	 with networkAddress do begin
		 Move( Network, IPXpkt.Destination.Network, SizeOf(Network) );
		 Move( Node,    IPXpkt.Destination.Node,    SizeOf(Node) );
	 end; { with }

	 IPXpkt.Destination.Socket := eventControlBlock.ECBSocket;
end;

{------------------------------------------------------------------}
procedure IPXObject.SetupRcvPacket ( var eventControlBlock : ECB;
																		 var IPX : IPXPacket;
																		 Socket : SocketNumberType;
																		 Buffer : Pointer;
																		 Buffsize : Word;
																		 ESR : Pointer );
begin
	with eventControlBlock do begin
		ESRAddress          := ESR;
		InUseFlag           := 0;
		ECBSocket           := Swap(Socket);
		FragmentCount       := 2;

		{ Fragment 0 points to the IPX Header }
		Fragment[0].Address := @IPX;
		Fragment[0].Size    := Word(SizeOf(IPX));

		{ Fragment 1 points to the receive buffer }
		Fragment[1].Address := Buffer;
		Fragment[1].Size    := Buffsize;
	end; { with }
end;

end. { of Unit IPXLIB }

