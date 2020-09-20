using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib
{
	/// <summary>
	/// Represents a .MID (Midi) file.
	/// </summary>
	public class MidiFile
	{
		#region Constants

		private const string ExceptionReadChunk	= "Didn't read {0} bytes for chunk starting at file position {1}. Only read {2} bytes.";

		#endregion

		#region Member Variables

		private	MidiFileFormat	_format			= MidiFileFormat.NA;
		private	ushort					_trackCount	= 0;
		private short						_division		= 0;

		private List<MidiTrack>	_tracks			= new List<MidiTrack>();

		#endregion

		#region Methods

		#region Class Methods

		/// <summary>
		/// Get a variable length value from midi file data.
		/// </summary>
		/// <param name="data">The byte[] to search.</param>
		/// <param name="index">The index at which to start searching (will be set
		/// to end of value after execution).</param>
		/// <returns>The length value.</returns>
		public static int ParseVariableLengthValue(byte[] data, ref int index)
		{
			int result = 0;

			do
			{
				result = (result << 7) | (data[index] & 0x7F);
			}
			while ((data[index++] & 0x80) != 0);

			return result;
		}

		#endregion

		/// <summary>
		/// Creates a new instance of a MidiFile.
		/// </summary>
		/// <param name="fileName">The midi file to read in.</param>
		public MidiFile(string fileName)
		{
			ReadFile(fileName);
		}

		/// <summary>
		/// Returns a List of messages that should be sent by the time indicated by ticks.
		/// </summary>
		/// <param name="ticks">The time to get messages through.</param>
		/// <returns>A MidiMessage List.</returns>
		public List<MidiMessage> GetNextMessages(ulong ticks)
		{
			List<MidiMessage> messages = new List<MidiMessage>();

			foreach (MidiTrack track in _tracks)
				messages.AddRange(track.GetNextMessages(ticks));

			return messages;
		}

		private byte[] ReadChunkPart(FileStream stream, int bytesToRead)
		{
			byte[]	buffer		= new byte[bytesToRead];
			long		filePos		= stream.Position;
			int			bytesRead	= stream.Read(buffer, 0, bytesToRead);
			if (bytesRead < bytesToRead)
				throw new EndOfFileException(String.Format(ExceptionReadChunk, bytesToRead, filePos, bytesRead));

			return buffer;
		}

		private void ReadFile(string fileName)
		{
			byte[]				buffer			= null;
			FileStream		fileStream	= File.Open(fileName, FileMode.Open);
			UTF8Encoding	encoder			= new UTF8Encoding(false);
			int						trackCount	= 0;

			try
			{
				while (fileStream.Position < fileStream.Length)
				{
					// Read in the chunk header (8 bytes - 4 bytes char[] type, 4 bytes chunk length).
					buffer	= ReadChunkPart(fileStream, 8);

					// Reverse the number bytes because they're big-endian.
					if (BitConverter.IsLittleEndian)
						Array.Reverse(buffer, 4, 4);

					string	chunkType		= encoder.GetString(buffer, 0, 4);
					int			chunkLength	= BitConverter.ToInt32(buffer, 4);

					// Read in the chunk data.
					buffer		= ReadChunkPart(fileStream, chunkLength);

					switch (chunkType)
					{
						case "MThd":
							if (BitConverter.IsLittleEndian)
							{
								// Reverse the number bytes because they're big-endian.
								Array.Reverse(buffer, 0, 2);
								Array.Reverse(buffer, 2, 2);
								Array.Reverse(buffer, 4, 2);
							}

							_format			= (MidiFileFormat)BitConverter.ToUInt16(buffer, 0);
							_trackCount	= BitConverter.ToUInt16(buffer, 2);
							_division		= BitConverter.ToInt16(buffer, 4);

							if (_division < 0)
								throw new Exception("Cannot process SMPTE files.");
							break;
						case "MTrk":
							trackCount++;
							MidiTrack track = new MidiTrack(buffer);

							// TODO: Handle sequential.
							_tracks.Add(track);

							break;
					}

					if (trackCount == _trackCount)
						break;
				}
			}
			catch (EndOfFileException) {}

			fileStream.Close();

			if (trackCount != _trackCount)
				throw new Exception(String.Format("Number of tracks found ({0}) does not equal specified track count ({1}).", trackCount, _trackCount));
		}

		#endregion

		#region Properties

		/// <summary>
		/// The division of time in the file.
		/// </summary>
		public short Division
		{
			get
			{
				return _division;
			}
		}

		/// <summary>
		/// Indicates whether all tracks are finished.
		/// </summary>
		public bool EndOfFile
		{
			get
			{
				bool	eof	= true;

				foreach (MidiTrack track in _tracks)
				{
					if (!track.EndOfTrack)
					{
						eof	= false;
						break;
					}
				}

				return eof;
			}
		}

		/// <summary>
		/// The format of the file.
		/// </summary>
		public MidiFileFormat Format
		{
			get
			{
				return _format;
			}
		}

		/// <summary>
		/// The number of tracks in the file.
		/// </summary>
		public int TrackCount
		{
			get
			{
				return _trackCount;
			}
		}

		#endregion
	}
}
