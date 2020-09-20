using System;
using System.Collections.Generic;
using System.Text;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages
{
	/// <summary>
	/// A Midi System Exclusive message.
	/// </summary>
	public class MidiSysExMessage: MidiMessage
	{
		#region Member Variables

		private int	_dataBytesCount	= 0;

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instance of the MidiSysCommonMessage class.
		/// </summary>
		/// <param name="ticks">The time at which the message takes place.</param>
		/// <param name="status">The status byte of the message.</param>
		/// <param name="data">The byte array to get any needed data from.</param>
		/// <param name="dataIndex">The index into the data array.</param>
		internal MidiSysExMessage(ulong ticks, byte status, byte[] data, ref int dataIndex): base(ticks, status)
		{
			_dataBytesCount	= MidiFile.ParseVariableLengthValue(data, ref dataIndex);

			// Fill the data bytes array with the appropriate data.
			_dataBytes			= new byte[_dataBytesCount];
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
				return _dataBytesCount;
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
