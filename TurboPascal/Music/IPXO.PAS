{--------------------------------------------------------------------------}
{  Library:  IPX Communication Object                                      }
{  Version date:  4/01/94                                                  }
{  Authors:  CPS335 Spring 94                                              }
{--------------------------------------------------------------------------}
unit ipxo;
interface
uses ipxlib, types, queues;

const
	 MAXPACKET   = 575;
	 MAXSENDWAIT = 1000;

type
	BufArray = array [0..MAXPACKET] of byte;
	PtrBuf   = ^BufArray;

	PtrECB = ^ECB;
	PtrIPXPack = ^IPXPacket;

	PtrIPXRec = ^IPXRec;
	IPXRec = record
		{ Who sent this packet }
		fromNode    : NodeNumberType;
		fromNetwork : longint;
		{ What they sent }
		len  : integer;
		buff : BufArray;
	end;

{==========================================}
{     general IPX communication object     }
{==========================================}
	IPXptr = ^IPX;
	IPX  = object( IPXObject )
		{ properties }
		socket          : Word;

		{ send stuff }
		destNode        : NodeNumberType;
		destNetwork     : longint;

		{ receive stuff }
		sourceNode      : NodeNumberType;
		sourceNetwork   : longint;
		buflen          : integer;
		receive_buffer  : BufArray;

		ECBArray        : array [0..100] of PtrECB;
		q               : Queue;

		{ methods }
		function   open( SocketNumber : Word;
										 numECB, numBuffers : integer ) : integer;
		procedure  set_destination( dest_node : NodeNumberType;
																dest_network : longint );
		function   send( ptr : pointer; length : word ) : integer;
		function   receive : integer;
		destructor close;
	end;

	procedure ListenESR(ecbptr : PtrECB);

implementation
{-----------------------------------------------------------------------}
procedure ListenESRHandler; external;
{$L esrhand.obj}

{-----------------------------------------------------------------------}
procedure ListenESR(ecbptr : PtrECB);
var
	 NewPack : PtrIPXRec;
	 PIPXHeader : PtrIPXPack;
begin
	 if ecbptr^.CompletionCode=0 then
	 begin
			New(NewPack);

			{ Point to the address of the IPX Header in this ECB }
			PIPXHeader := PtrIPXPack(ecbptr^.fragment[0].Address);

			{ create the record }
			with NewPack^ do begin
				fromNode    := PIPXHeader^.Source.Node;
				fromNetwork := PIPXHeader^.Source.Network;

				len:=ecbptr^.fragment[1].Size;
				move(BufArray(ecbptr^.fragment[1].Address^), buff, len);
			end; { with }

			{ The queue copies the packet, therefore, we can delete it }
			IPXptr(ecbptr^.IPX_ptr)^.q.enqueue(NewPack,sizeof(IPXRec));
			dispose(NewPack);
	 end;

	 { return the ECB to listening status }
	 IPXptr(ecbptr^.IPX_ptr)^.ListenForPacket(ecbptr^);
end;

{--------------------------------------------------------------------------}
{                               IPX                                        }
{--------------------------------------------------------------------------}

{--------------------------------------------------------------------------}
{ Function: IPX open function                                              }
{ Purpose:  Opens an IPX socket for communications                         }
{           Returns an error code (0=okay)                                 }
{--------------------------------------------------------------------------}

function IPX.open( SocketNumber : Word;
									 numECB, numBuffers : integer ) : integer;
var
	i, ret : integer;
	buf : PtrBuf;
	IPXpktptr : PtrIPXPack;
begin
	{ Open the socket that must be explicitly closed }
	ret    := OpenSocket( SocketNumber, $0 );
	socket := SocketNumber;

	if ret = 0 then begin
		{ Allocate array of receiving ECB's and Initialize them	}
		for i := 0 to numECB do	begin
			GetMem( ECBarray[i], ( sizeof(ECB)) );

			GetMem( buf, sizeof(BufArray) );
			GetMem( IPXpktptr, sizeof(IPXPacketStructure));
			SetupRcvPacket( ECBarray[i]^, IPXpktptr^, socket, buf,
											sizeof(BufArray), @ListenESRHandler );
			ECBarray[i]^.IPX_ptr := @self;
		end; { for }

		{ Call the queue constructor }
		if numBuffers < numECB then
			numBuffers := numECB;
		q.init( numBuffers );

		{ Set up all ECB's to start listening }
		for i := 0 to numECB do	begin
			ListenForPacket( ECBarray[i]^ );
		end; { for }
	end; { if ret = 0 }

	Open := ret;
end; { IPX.Open }

{--------------------------------------------------------------------------}
{ Function: IPX set destination function                                   }
{ Purpose:  Sets the IPX destination address for sending a packet          }
{--------------------------------------------------------------------------}

procedure IPX.set_destination( dest_node : NodeNumberType;
															 dest_network : longint );
begin
	move(dest_node,destNode,sizeof(NodeNumberType));
	destNetwork := dest_network;
end; { IPX.set_destination }

{--------------------------------------------------------------------------}
{ Function: IPX send packet function                                       }
{ Purpose:  Sends the date passed as an IPX packet                         }
{           to the currently set IPX address                               }
{           Returns an error code (0=okay)                                 }
{--------------------------------------------------------------------------}

function IPX.Send(ptr:pointer; length:word) : integer;
var
	eventControlBlock : ECB;
	IPXtype           : IPXPacket;
	networkAddress    : ReplyBuffer;
	wait              : integer;

begin
	Send := 1; { Default Value: Error occurred }
	networkAddress.Network := destNetwork;
	move(destNode,networkAddress.Node,sizeof(destNode));

	{ Note this packet will use the Polling method, not the ESR method }
	SetupSendPacket(eventControlBlock, IPXtype,
									networkAddress, Socket, ptr, length, nil);
	SendPacket(eventControlBlock);

	wait := 0;
	while (eventControlBlock.InUseFlag <> 0) and (wait<MAXSENDWAIT) do begin
		inc(wait);
		RelinquishControl; { To allow other process to run }
	end;

	if eventControlBlock.InUseFlag = 0 then
		send := integer(eventControlBlock.CompletionCode);
end; { IPX.Send }

{--------------------------------------------------------------------------}
{ Function: IPX receive packet function                                    }
{ Purpose:  if a packet has been received then is is placed in the IPX     }
{           data buffer and returns any error code (0=okay)                }
{--------------------------------------------------------------------------}
function IPX.Receive:integer;
var
	received : integer;
	RecdPack : IPXRec;
begin
	Receive := 1; { Default Value: Q_EMPTY
{  received := q.dequeue(receive_buffer, sizeof(receive_buffer));}
	received := q.dequeue(@RecdPack,sizeof(IPXRec));

	if received <> Q_EMPTY then begin
		sourceNode := RecdPack.fromNode;
		sourceNetwork := RecdPack.fromNetwork;
		buflen := RecdPack.len;
		move(RecdPack.buff,receive_buffer,RecdPack.len);
		receive := 0;
	end; { if }
end; { IPX.Receive }

{--------------------------------------------------------------------------}
{ Function: IPX close function                                             }
{ Purpose:  Closes an IPX socket for communications                        }
{--------------------------------------------------------------------------}
destructor IPX.close;
begin
	CloseSocket( socket );
	q.done;
end;

end. { of UNIT IPXO }