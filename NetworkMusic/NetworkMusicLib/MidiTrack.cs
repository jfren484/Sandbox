using System.Collections;
using System.Collections.Generic;
using Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib
{
	/// <summary>
	/// Represents a single track in a Midi File.
	/// </summary>
	public class MidiTrack
	{
		#region Member Variables

		private MidiMessage[]	_messages		= null;

		private int						_currentMsg	= 0;

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instance of the MidiTrack class, using the specified byte array as input data.
		/// </summary>
		/// <param name="data">The data to parse out for the track.</param>
		public MidiTrack(byte[] data)
		{
			ParseTrackData(data);
		}

		/// <summary>
		/// Returns a List of messages that should be sent by the time indicated by ticks.
		/// </summary>
		/// <param name="ticks">The time to get messages through.</param>
		/// <returns>A MidiMessage List.</returns>
		public List<MidiMessage> GetNextMessages(ulong ticks)
		{
			List<MidiMessage>	messages	= new List<MidiMessage>();

			while (_currentMsg < _messages.Length && _messages[_currentMsg].Ticks <= ticks)
				messages.Add(_messages[_currentMsg++]);

			return messages;
		}

		private void ParseTrackData(byte[] trackData)
		{
			int		index					= 0;
			ulong	ticksDelta		= 0,
						ticks					= 0;
			byte	status				= 0,
						runningStatus = 0;

			List<MidiMessage>	messages	= new List<MidiMessage>();

			while (index < trackData.Length)
			{
				ticksDelta	= (ulong)MidiFile.ParseVariableLengthValue(trackData, ref index);
				if (ticksDelta > 0)
					ticks += ticksDelta;

				if ((trackData[index] & 0x80) != 0)
					status = trackData[index++];
				else
					status = runningStatus;

				MidiMessage	message	= MidiMessage.CreateMidiMessage(ticks, status, trackData, ref index);

				if (message.SetsRunningStatus)
				{
					if (runningStatus != status)
						runningStatus = status;
				}
				else if (message.ClearsRunningStatus)
					runningStatus = 0;

				messages.Add(message);
			}

			_messages	= new MidiMessage[messages.Count];
			messages.CopyTo(_messages);
		}

		#endregion

		#region Properties

		/// <summary>
		/// Indicates whether the internal pointer is at the end of the track.
		/// </summary>
		public bool EndOfTrack
		{
			get
			{
				return (_currentMsg >= _messages.Length);
			}
		}

		#endregion
	}
}
