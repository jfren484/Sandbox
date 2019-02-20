{========================================================================
* UNIT:    TYPES.PAS
* PURPOSE: Defines the interconnected types for IPX Communications.
=========================================================================}
UNIT types;
interface
type
	 TwelveByteArray   = array [0..11] of Byte;
	 FourByteArray     = array [0..3] of Byte;
	 NetworkNumberType = Longint;
	 NodeNumberType    = array [0..5] of Byte;
	 TwoByteArray      = array [0..1] of Byte;
	 SocketNumberType  = Word;
	 bytePtr = ^byte;
	 wordPtr = ^word;

	 ReplyBuffer = record
			Network :NetworkNumberType;  { high-low }
			Node    :NodeNumberType;     { high-low }
	 end;

	 IPXAddress = record
			Network :NetworkNumberType;  { high-low }
			Node    :NodeNumberType;     { high-low }
			Socket  :SocketNumberType;   { high-low }
	 end;
   RequestBuffer = IPXAddress;

   IPXPacketStructure = record
      PacketCheckSum         :Word;  { high-low }
      PacketLength           :Word;  { high-low }
      PacketTransportControl :Byte;
			PacketType             :Byte;
      Destination            :IPXAddress;
      Source                 :IPXAddress;
   end;
   IPXPacket = IPXPacketStructure;

	 ECBFragment = record
			Address :Pointer;  { offset-segment }
      Size    :Word;
   end;

	ECB = record
		LinkAddress       : Pointer;				  { offset-segment }
		ESRAddress        : Pointer; 					{ offset-segment }
		InUseFlag         : Byte;
		CompletionCode    : Byte;
		ECBSocket         : SocketNumberType; { hi-lo }
		IPXWorkspace      : Longint;
		DriverWorkspace   : TwelveByteArray;
		ImmediateAddress  : NodeNumberType;   { hi-lo }
		FragmentCount     : Word;         		{ lo-hi }
		Fragment          : array [0..1] of ECBFragment;
		IPX_ptr           : Pointer;  				{ Added to enable EnQueueing }
	end;

implementation
end. { of unit TYPES }