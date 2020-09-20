namespace Fryz.Apps.NetworkMusic.NetworkMusicLib
{
	#region MidiChannel

	/// <summary>
	/// The available midi channels (0 - 15).
	/// </summary>
	public enum MidiChannel: byte
	{
		/// <summary>
		/// Channel 1.
		/// </summary>
		c01 = 0,

		/// <summary>
		/// Channel 2.
		/// </summary>
		c02 = 1,

		/// <summary>
		/// Channel 3.
		/// </summary>
		c03 = 2,

		/// <summary>
		/// Channel 4.
		/// </summary>
		c04 = 3,

		/// <summary>
		/// Channel 5.
		/// </summary>
		c05 = 4,

		/// <summary>
		/// Channel 6.
		/// </summary>
		c06 = 5,

		/// <summary>
		/// Channel 7.
		/// </summary>
		c07 = 6,

		/// <summary>
		/// Channel 8.
		/// </summary>
		c08 = 7,

		/// <summary>
		/// Channel 9.
		/// </summary>
		c09 = 8,

		/// <summary>
		/// Channel 10.
		/// </summary>
		c10 = 9,

		/// <summary>
		/// Channel 11.
		/// </summary>
		c11 = 10,

		/// <summary>
		/// Channel 12.
		/// </summary>
		c12 = 11,

		/// <summary>
		/// Channel 13.
		/// </summary>
		c13 = 12,

		/// <summary>
		/// Channel 14.
		/// </summary>
		c14 = 13,

		/// <summary>
		/// Channel 15.
		/// </summary>
		c15 = 14,

		/// <summary>
		/// Channel 16.
		/// </summary>
		c16 = 15
	}

	#endregion

	#region MidiFileFormat

	/// <summary>
	/// The possible values for midi file format.
	/// </summary>
	public enum MidiFileFormat: byte
	{
		/// <summary>
		/// File contains a single track.
		/// </summary>
		SingleTrack				= 0,

		/// <summary>
		/// File contains multiple tracks that will be played simultaneously.
		/// </summary>
		SimultaneousTrack	= 1,

		/// <summary>
		/// File contains multiple tracks that will be played sequentially.
		/// </summary>
		SequentialTrack		= 2,

		/// <summary>
		/// File format is unknown.
		/// </summary>
		NA								= 255
	}

	#endregion

	#region MidiChannelMessageByte

	/// <summary>
	/// The possible values for a midi channel message type.
	/// </summary>
	public enum MidiChannelMessageByte: byte
	{
		/// <summary>
		/// A note-off message.
		/// </summary>
		NoteOff						= 0x80,

		/// <summary>
		/// A note-on message.
		/// </summary>
		NoteOn						= 0x90,

		/// <summary>
		/// A poly pressure (aftertouch) message.
		/// </summary>
		AfterTouch				= 0xA0,

		/// <summary>
		/// A controller-change message.
		/// </summary>
		ControllerChange	= 0xB0,

		/// <summary>
		/// A program-change message.
		/// </summary>
		ProgramChange			= 0xC0,

		/// <summary>
		/// A channel pressure (aftertouch) message.
		/// </summary>
		ChannelPressure		= 0xD0,

		/// <summary>
		/// A pitch wheel message.
		/// </summary>
		PitchWheel				= 0xE0
	}

	#endregion

	#region MidiSysCommonMessageByte

	/// <summary>
	/// The possible values for a midi system common message type.
	/// </summary>
	public enum MidiSysCommonMessageByte: byte
	{
		/// <summary>
		/// An MTC Quarter Frame message.
		/// </summary>
		MTCQuarterFrame			= 0xF1,

		/// <summary>
		/// A Song Position Pointer message.
		/// </summary>
		SongPositionPointer	= 0xF2,

		/// <summary>
		/// A Song Select message.
		/// </summary>
		SongSelect					= 0xF3,

		/// <summary>
		/// A Tune Request message.
		/// </summary>
		TuneRequest					= 0xF6
	}

	#endregion

	#region MidiSysRealtimeMessageByte

	/// <summary>
	/// The possible values for a midi system realtime message type.
	/// </summary>
	public enum MidiSysRealtimeMessageByte: byte
	{
		/// <summary>
		/// A MidiClock message.
		/// </summary>
		MidiClock			= 0xF8,

		/// <summary>
		/// A Midi Tick message.
		/// </summary>
		MidiTick			= 0xF9,

		/// <summary>
		/// A Midi Start message.
		/// </summary>
		MidiStart			= 0xFA,

		/// <summary>
		/// A Midi Continue message.
		/// </summary>
		MidiContinue	= 0xFB,

		/// <summary>
		/// A Midi Stop message.
		/// </summary>
		MidiStop			= 0xFC,

		/// <summary>
		/// An Active Sense message.
		/// </summary>
		ActiveSense		= 0xFE
	}

	#endregion

	#region MidiSystemExclusiveMessageByte

	/// <summary>
	/// The possible values for a midi system exclusive message type.
	/// </summary>
	public enum MidiSystemExclusiveMessageByte: byte
	{
		/// <summary>
		/// A SysEx start message.
		/// </summary>
		Start			= 0xF0,

		/// <summary>
		/// A SysEx continue message.
		/// </summary>
		Continue	= 0xF7
	}

	#endregion
}