using System;
using System.Collections.Generic;
using System.Text;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages
{
	/// <summary>
	/// A Midi Channel message (note on, off, program change, etc.).
	/// </summary>
	public class MidiChannelMessage: MidiMessage
	{
		#region Member Variables

		private MidiChannelMessageByte	_messageByte;
		private MidiChannel							_channel;

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instance of the MidiChannelMessage class.
		/// </summary>
		/// <param name="ticks">The time at which the message takes place.</param>
		/// <param name="status">The status byte of the message.</param>
		/// <param name="data">The byte array to get any needed data from.</param>
		/// <param name="dataIndex">The index into the data array.</param>
		internal MidiChannelMessage(ulong ticks, byte status, byte[] data, ref int dataIndex): base(ticks, status)
		{
			_messageByte		= (MidiChannelMessageByte)(_messageStatus & 0xF0);
			_channel				= (MidiChannel)(status & 0x0F);

			// Fill the data bytes array with the appropriate data.
			_dataBytes			= new byte[DataBytesCount];
			for (int i = 0; i < _dataBytes.Length; i++)
				_dataBytes[i]	= data[dataIndex++];
		}

		#endregion

		#region Properties

		/// <summary>
		/// The channel this message applies to.
		/// </summary>
		public MidiChannel Channel
		{
			get
			{
				return _channel;
			}
		}

		/// <summary>
		/// Indicates whether the message status should clear the running status.
		/// </summary>
		public override bool ClearsRunningStatus
		{
			get
			{
				return false;
			}
		}

		/// <summary>
		/// Inidicates how many data bytes should be included with this message.
		/// </summary>
		public override int DataBytesCount
		{
			get
			{
				int count = 0;

				switch (_messageByte)
				{
					case MidiChannelMessageByte.ChannelPressure:
					case MidiChannelMessageByte.ProgramChange:
						count	= 1;
						break;
					default:
						count	= 2;
						break;
				}

				return count;
			}
		}

		/// <summary>
		/// The message byte (status) for this message.
		/// </summary>
		public MidiChannelMessageByte MessageByte
		{
			get
			{
				return _messageByte;
			}
		}

		/// <summary>
		/// Indicates whether the message status should be saved as running status.
		/// </summary>
		public override bool SetsRunningStatus
		{
			get
			{
				return true;
			}
		}

		#endregion
	}
}
