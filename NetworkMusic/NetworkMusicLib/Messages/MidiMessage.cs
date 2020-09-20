using System;
using System.Collections.Generic;
using System.Text;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages
{
	/// <summary>
	/// A generic Midi message.
	/// </summary>
	public abstract class MidiMessage
	{
		#region Member Variables

		/// <summary>
		/// The time at which this event takes place.
		/// </summary>
		protected ulong		_ticks					= 0;

		/// <summary>
		/// The status byte of this message.
		/// </summary>
		protected byte		_messageStatus	= 0x00;

		/// <summary>
		/// The data bytes for this message.
		/// </summary>
		protected	byte[]	_dataBytes			= new byte[0];

		#endregion

		#region Methods

		#region Class Methods

		/// <summary>
		/// Creates a new instance of the specific MidiMessage class.
		/// </summary>
		/// <param name="ticks">The time at which the message takes place.</param>
		/// <param name="status">The status used to determine the type of message.</param>
		/// <param name="data">The byte array to get any needed data from.</param>
		/// <param name="dataIndex">The index into the data array.</param>
		/// <returns>A MidiMessage object.</returns>
		public static MidiMessage CreateMidiMessage(ulong ticks, byte status, byte[] data, ref int dataIndex)
		{
			if (status < 0x80 || NetworkMusicConsts.InvalidStatuses.Contains(status))
				throw new ArgumentException(String.Format("Invalid status at {0}: {1:X02}", dataIndex, status));

			MidiMessage message = null;

			if (status < 0xF0)
				message	= new MidiChannelMessage(ticks, status, data, ref dataIndex);
			else if (NetworkMusicConsts.SysCommonStatuses.Contains(status))
				message = new MidiSysCommonMessage(ticks, status, data, ref dataIndex);
			else if (NetworkMusicConsts.SysRealtimeStatuses.Contains(status))
				message = new MidiSysRealtimeMessage(ticks, status, data, ref dataIndex);
			else if (NetworkMusicConsts.SysExStatuses.Contains(status))
				message	= new MidiSysExMessage(ticks, status, data, ref dataIndex);
			else if (status == 0xFF)
				message = new MidiMetaEventMessage(ticks, status, data, ref dataIndex);
			else
				throw new ArgumentException(String.Format("Unrecognized status: {0:X02}", status));

			return message;
		}

		#endregion

		/// <summary>
		/// Initializes a new MidiMessage object.
		/// </summary>
		/// <param name="ticks">The time at which the message takes place.</param>
		/// <param name="status">The status byte of the message.</param>
		protected MidiMessage(ulong ticks, byte status)
		{
			_ticks					= ticks;
			_messageStatus	= status;
		}

		/// <summary>
		/// Returns a string representing the message.
		/// </summary>
		/// <returns>A string object.</returns>
		public override string ToString()
		{
			StringBuilder msgString	= new StringBuilder(DataBytes.Length + 4);

			msgString.AppendFormat("{0:X02}", MessageStatus);
			foreach (byte dataByte in DataBytes)
				msgString.AppendFormat("{0:X02}", dataByte);

			return msgString.ToString();
		}

		#endregion

		#region Properties

		#region Abstract Properties

		/// <summary>
		/// Indicates whether the message status should clear the running status.
		/// </summary>
		public abstract bool ClearsRunningStatus
		{
			get;
		}

		/// <summary>
		/// Inidicates how many data bytes should be included with this message.
		/// </summary>
		public abstract int DataBytesCount
		{
			get;
		}

		/// <summary>
		/// Indicates whether the message status should be saved as running status.
		/// </summary>
		public abstract bool SetsRunningStatus
		{
			get;
		}

		#endregion

		/// <summary>
		/// The data portion of the message.
		/// </summary>
		public byte[] DataBytes
		{
			get
			{
				return _dataBytes;
			}
		}

		/// <summary>
		/// The message status byte.
		/// </summary>
		public byte MessageStatus
		{
			get
			{
				return _messageStatus;
			}
		}

		/// <summary>
		/// The time at which this message takes place.
		/// </summary>
		public ulong Ticks
		{
			get
			{
				return _ticks;
			}
		}

		#endregion
	}
}
