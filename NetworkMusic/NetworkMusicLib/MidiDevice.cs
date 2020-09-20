using System;
using Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib
{
	/// <summary>
	/// A class for communicating with a midi device.
	/// </summary>
	public class MidiDevice
	{
		#region Member Variables

		private int _midiHandle;

		#endregion

		#region Properties

		/// <summary>
		/// The channels the MidiDevice will process messages for.
		/// </summary>
		public ushort Channels { get; set; }

		#endregion

		#region Methods

		#region Constructors

		/// <summary>
		/// Creates an instance of MidiDevice and opens the default midi device.
		/// </summary>
		public MidiDevice(ushort channelFlags)
		{
			_midiHandle = Midi.OpenDefaultDevice();

			Channels    = channelFlags;
		}

		/// <summary>
		/// Creates an instance of MidiDevice and opens the default midi device, handling all channels.
		/// </summary>
		public MidiDevice(): this(0xFFFF)	{}

		#endregion

		#region Destructor

		/// <summary>
		/// Closes the associated device.
		/// </summary>
		~MidiDevice()
		{
			Close();
		}

		#endregion

		/// <summary>
		/// Closes the midi device.
		/// </summary>
		public void Close()
		{
			if (_midiHandle > 0)
			{
				Midi.OutputMessage(_midiHandle, MidiChannelMessageByte.ControllerChange, MidiChannel.c01, 0x78);
				Midi.CloseDevice(_midiHandle);
				_midiHandle	= 0;
			}
		}

		/// <summary>
		/// Plays a Midi Channel Message through the open device.
		/// </summary>
		/// <param name="message">The MidiChannelMessage to play.</param>
		public void Play(MidiChannelMessage message)
		{
			if (PlaysChannel(message.Channel) || message.MessageByte == MidiChannelMessageByte.NoteOff)
				Midi.OutputMessage(_midiHandle, message.MessageByte, message.Channel, message.DataBytes);
		}

		/// <summary>
		/// Indicates whether this object plays messages on the specified channel.
		/// </summary>
		/// <param name="channel">The MidiChannel to check.</param>
		/// <returns>True or False</returns>
		public bool PlaysChannel(MidiChannel channel)
		{
			return (Channels & (ushort)Math.Pow(2, (byte)channel)) != 0;
		}

		#endregion
	}
}
