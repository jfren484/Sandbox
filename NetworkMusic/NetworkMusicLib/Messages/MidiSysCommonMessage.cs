using System;
using System.Collections.Generic;
using System.Text;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages
{
	/// <summary>
	/// A Midi System Common message (MTC Quarter Frame, Song Position Pointer,
	/// Song Select, Tune Request).
	/// </summary>
	public class MidiSysCommonMessage: MidiMessage
	{
		#region Member Variables

		private MidiSysCommonMessageByte	_messageByte;

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instance of the MidiSysCommonMessage class.
		/// </summary>
		/// <param name="ticks">The time at which the message takes place.</param>
		/// <param name="status">The status byte of the message.</param>
		/// <param name="data">The byte array to get any needed data from.</param>
		/// <param name="dataIndex">The index into the data array.</param>
		internal MidiSysCommonMessage(ulong ticks, byte status, byte[] data, ref int dataIndex): base(ticks, status)
		{
			_messageByte		= (MidiSysCommonMessageByte)_messageStatus;

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
				return true;
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
					case MidiSysCommonMessageByte.TuneRequest:
						count	= 0;
						break;
					case MidiSysCommonMessageByte.MTCQuarterFrame:
					case MidiSysCommonMessageByte.SongSelect:
						count	= 1;
						break;
					case MidiSysCommonMessageByte.SongPositionPointer:
						count	= 2;
						break;
				}

				return count;
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
