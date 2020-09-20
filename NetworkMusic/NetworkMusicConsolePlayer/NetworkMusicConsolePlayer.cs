using System;
using System.Globalization;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using Fryz.Apps.NetworkMusic.NetworkMusicLib;
using Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages;

namespace Fryz.Apps.NetworkMusic.NetworkMusicConsolePlayer
{
	/// <summary>
	/// Plays music instructions sent by a NetworkMusicConductor.
	/// </summary>
	public static class NetworkMusicConsolePlayer
	{
		#region Constants

		private const int MaxThreads = 10;

		#endregion

		#region Member Variables

		private static bool      _run = true;
		private static int       _checkCount;

		private static UdpClient  _conductorClient;
		private static IPEndPoint _endPoint;
		private static MidiDevice _midiDevice;

		private static readonly ConsoleMonitor ConsoleMonitor = new ConsoleMonitor();

		#endregion

		#region Methods

		private static void Main(string[] args)
		{
			ConsoleMonitor.Exiting += consoleMonitor_Exiting;

			var	paramsOk = false;

			try
			{
				if (args.Length > 1)
					throw new Exception("Too many arguments.");

				if (args.Length > 0)
				{
					var	channels = ushort.Parse(args[0], NumberStyles.HexNumber);
					_midiDevice  = new MidiDevice(channels);
				}
				else
					_midiDevice  = new MidiDevice();

				_conductorClient = new UdpClient(NetworkMusicConsts.NetworkMusicPort);
				_conductorClient.JoinMulticastGroup(IPAddress.Parse(NetworkMusicConsts.NetworkMusicMulticastIP));

				paramsOk	= true;
			}
			catch (Exception ex)
			{
				Console.Out.WriteLine(ex.Message);
				Console.Out.WriteLine("USAGE: NetworkMusicPlayer.exe [<channels>]");
			}

			if (paramsOk)
			{
				try
				{
					while (_run)
					{
						if (_checkCount < MaxThreads)
							(new Thread(CheckNewMessages)).Start();
						else
							Thread.Sleep(10);
					}

					WrapUp();
				}
				catch (Exception ex)
				{
					Console.WriteLine("Exception thrown while processing messages: {0}", ex.Message);
				}
			}
		}

		private static void CheckNewMessages()
		{
			_checkCount++;

			string msgString;

			try
			{
				lock (_conductorClient)
				{
					var data  = _conductorClient.Receive(ref _endPoint);
					msgString = Encoding.ASCII.GetString(data);
				}
			}
			catch (Exception ex)
			{
				msgString	= null;
				Console.WriteLine("Exception thrown while reading from stream: {0}", ex.Message);
			}

			if (string.IsNullOrEmpty(msgString) || msgString == "stop")
				_run = false;
			else
				ProcessMessages(msgString);

			_checkCount--;
		}

		private static void ProcessMessages(object messageBytes)
		{
			foreach (var msgString in ((string)messageBytes).Split(';'))
			{
				if (msgString.Length > 0)
				{
					var bytes   = String.Format("{0,-8}", msgString).Replace(' ', '0');
					var byteInt = Convert.ToUInt32(bytes, 16);
					var data    = BitConverter.GetBytes(byteInt);
					var index   = 1;

					if (BitConverter.IsLittleEndian)
						Array.Reverse(data);

					var message	= (MidiChannelMessage)MidiMessage.CreateMidiMessage(0, data[0], data, ref index);

					_midiDevice.Play(message);
				}
			}
		}

		private static void WrapUp()
		{
			if (_conductorClient != null)
				_conductorClient.Close();

			if (_midiDevice != null)
				_midiDevice.Close();
		}

		#region Event Handlers

		private static void consoleMonitor_Exiting()
		{
			WrapUp();
		}

		#endregion

		#endregion
	}
}
