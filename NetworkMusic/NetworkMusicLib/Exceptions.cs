using System;
using System.Runtime.InteropServices;
using System.Text;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib
{
	#region MidiException

	/// <summary>
	/// An exception thrown due to an error result from the Midi API.
	/// </summary>
	public class MidiException: Exception
	{
		#region DllImport

		[DllImport("winmm.dll")]
		private static extern int midiOutGetErrorText(int errCode, StringBuilder message, int sizeOfMessage);

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instance of MidiException with the specified message
		/// format string, getting the specific error text from the Midi API.
		/// </summary>
		/// <param name="message">The message format string.</param>
		/// <param name="error">The Midi error number.</param>
		public MidiException(string message, int error) : base(String.Format(message, GetMidiOutErrorMessage(error))) { }

		#endregion

		#region Static Methods

		private static string GetMidiOutErrorMessage(int errNumber)
		{
			StringBuilder message = new StringBuilder();
			midiOutGetErrorText(errNumber, message, message.Capacity);
			return message.ToString();
		}

		#endregion
	}

	#endregion

	#region EndOfFileException

	/// <summary>
	/// An exception thrown when the end of the midi file is reached unexpectedly.
	/// </summary>
	public class EndOfFileException: ApplicationException
	{
		#region Methods

		/// <summary>
		/// Creates a new instance of EndOfFileException with the specified message.
		/// </summary>
		/// <param name="message">The message to display to the end-user.</param>
		public EndOfFileException(string message) : base(message) { }

		#endregion
	}

	#endregion
}
