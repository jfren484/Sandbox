using System;
using System.Runtime.InteropServices;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib
{
	/// <summary>
	/// Routines for using Midi.
	/// </summary>
	public class Midi
	{
		#region DllImport

		[DllImport("winmm.dll")]
		private static extern int midiOutOpen(ref int handle, int deviceID, int callback, int instance, int flags);

		[DllImport("winmm.dll")]
		private static extern int midiOutClose(int handle);

		[DllImport("winmm.dll")]
		private static extern int midiOutShortMsg(int handle, int message);

		#endregion

		#region Constants

		private const string	ExceptionClose	= "Couldn't close Midi device!\n{0}";
		private const string	ExceptionOpen		= "Couldn't open default Midi device!\n{0}";
		private const string	ExceptionOutput	= "Error outputing Midi message!\n{0}";

		private const int			DefaultDevice		= -1;

		#endregion

		#region Private Static Methods

		private static byte MsgChannelToByte(MidiChannelMessageByte msg, MidiChannel channel)
		{
			return (byte)((byte)msg | (byte)channel);
		}

		#endregion

		#region Public Static Methods

		/// <summary>
		/// Closes a midi device.
		/// </summary>
		/// <param name="midiDeviceHandle">The handle to the device to close.</param>
		/// <exception cref="MidiException">Throws a MidiException if the midi routine returns an error.</exception>
		public static void CloseDevice(int midiDeviceHandle)
		{
			int result = midiOutClose(midiDeviceHandle);
			if (result != 0)
				throw new MidiException(ExceptionClose, result);
		}

		/// <summary>
		/// Opens the default midi device.
		/// </summary>
		/// <returns>The handle to the opened device.</returns>
		/// <exception cref="MidiException">Throws a MidiException if the midi routine returns an error.</exception>
		public static int OpenDefaultDevice()
		{
			int	midiDeviceHandle	= 0;

			int	result = midiOutOpen(ref midiDeviceHandle, DefaultDevice, 0, 0, 0);
			if (result != 0)
				throw new MidiException(ExceptionOpen, result);

			return midiDeviceHandle;
		}

		/// <summary>
		/// Sends a message to the specified midi device.
		/// </summary>
		/// <param name="midiDeviceHandle">The handle of the device to send the message to.</param>
		/// <param name="msg">The type of message to send.</param>
		/// <param name="channel">The channel the message applies to.</param>
		/// <param name="data">A byte[] containing data to send.</param>
		/// <exception cref="MidiException">Throws a MidiException if the midi routine returns an error.</exception>
		public static void OutputMessage(int midiDeviceHandle, MidiChannelMessageByte msg, MidiChannel channel, byte[] data)
		{
			byte[]	toConvert	= new byte[4];
			toConvert[0]			= MsgChannelToByte(msg, channel);
			data.CopyTo(toConvert, 1);

			for (int i = data.Length + 1; i < toConvert.Length; i++)
				toConvert[i]	= 0x00;

			int result = midiOutShortMsg(midiDeviceHandle, BitConverter.ToInt32(toConvert, 0));
			if (result != 0)
				throw new MidiException(ExceptionOutput, result);
		}

		/// <summary>
		/// Sends a message to the specified midi device.
		/// </summary>
		/// <param name="midiDeviceHandle">The handle of the device to send the message to.</param>
		/// <param name="msg">The type of message to send.</param>
		/// <param name="channel">The channel the message applies to.</param>
		/// <param name="b1">The 1st byte of message data (2nd byte of the message).</param>
		/// <param name="b2">The 2nd byte of message data (3rd byte of the message).</param>
		/// <param name="b3">The 3rd byte of message data (4th byte of the message).</param>
		/// <exception cref="MidiException">Throws a MidiException if the midi routine returns an error.</exception>
		public static void OutputMessage(int midiDeviceHandle, MidiChannelMessageByte msg, MidiChannel channel, byte b1, byte b2, byte b3)
		{
			OutputMessage(midiDeviceHandle, msg, channel, new byte[] { b1, b2, b3 });
		}

		/// <summary>
		/// Sends a message to the specified midi device.
		/// </summary>
		/// <param name="midiDeviceHandle">The handle of the device to send the message to.</param>
		/// <param name="msg">The type of message to send.</param>
		/// <param name="channel">The channel the message applies to.</param>
		/// <param name="b1">The 1st byte of message data (2nd byte of the message).</param>
		/// <param name="b2">The 2nd byte of message data (3rd byte of the message).</param>
		/// <exception cref="MidiException">Throws a MidiException if the midi routine returns an error.</exception>
		public static void OutputMessage(int midiDeviceHandle, MidiChannelMessageByte msg, MidiChannel channel, byte b1, byte b2)
		{
			OutputMessage(midiDeviceHandle, msg, channel, new byte[] { b1, b2 });
		}

		/// <summary>
		/// Sends a message to the specified midi device.
		/// </summary>
		/// <param name="midiDeviceHandle">The handle of the device to send the message to.</param>
		/// <param name="msg">The type of message to send.</param>
		/// <param name="channel">The channel the message applies to.</param>
		/// <param name="b1">The 1st byte of message data (2nd byte of the message).</param>
		/// <exception cref="MidiException">Throws a MidiException if the midi routine returns an error.</exception>
		public static void OutputMessage(int midiDeviceHandle, MidiChannelMessageByte msg, MidiChannel channel, byte b1)
		{
			OutputMessage(midiDeviceHandle, msg, channel, new byte[] { b1 });
		}

		#endregion
	}
}
