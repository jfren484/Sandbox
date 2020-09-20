using System;
using System.Collections.Generic;
using System.Text;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages
{
	/// <summary>
	/// A Midi System Realtime message (Midi Clock, Midi Tick, Midi Start, Midi
	/// Stop, etc.).
	/// </summary>
	public class MidiSysRealtimeMessage: MidiMessage
	{
		#region Member Variables

		private MidiSysRealtimeMessageByte	_messageByte;

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instance of the MidiSysCommonMessage class.
		/// </summary>
		/// <param name="ticks">The time at which the message takes place.</param>
		/// <param name="status">The status byte of the message.</param>
		/// <param name="data">The byte array to get any needed data from.</param>
		/// <param name="dataIndex">The index into the data array.</param>
		internal MidiSysRealtimeMessage(ulong ticks, byte status, byte[] data, ref int dataIndex): base(ticks, status)
		{
			_messageByte		= (MidiSysRealtimeMessageByte)_messageStatus;

			// Fill the data bytes array with the appropriate data.
			_dataBytes			= new byte[DataBytesCount];
			for (int i = 0; i < _dataBytes.Length; i++)
				_dataBytes[i]	= data[dataIndex++];
		}

		#endregion

		#region Properties

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
				return 0;
			}
		}

		/// <summary>
		/// Indicates whether the message status should be saved as running status.
		/// </summary>
		public override bool SetsRunningStatus
		{
			get
			{
				return false;
			}
		}

		#endregion
	}
}
