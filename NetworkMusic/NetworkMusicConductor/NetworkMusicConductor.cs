using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using Fryz.Apps.NetworkMusic.NetworkMusicLib;
using Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages;

namespace Fryz.Apps.NetworkMusic.NetworkMusicConductor
{
	/// <summary>
	/// Sends music instructions to multiple NetworkMusicPlayer objects.
	/// </summary>
	public class NetworkMusicConductor
	{
		#region Static Member Variables

		private static UdpClient	_udpClient;

		private static MidiFile		_file;
		private static MidiTicker	_ticker;

		#endregion

		#region Methods

		private static void Main()
		{
			var	run = true;

			_udpClient = new UdpClient(NetworkMusicConsts.NetworkMusicMulticastIP, NetworkMusicConsts.NetworkMusicPort);

			try
			{
				while (run)
				{
					Console.Write("file> ");
					var file = Console.ReadLine();
					if (file == "")
						run	= false;
					else
						PlayFile(file);
				}
			}
			finally
			{
				_udpClient.Close();
			}
		}

		private static void AdjustTickerTempo(MidiMessage tempoMsg)
		{
			var tempoBytes	= new byte[4];
			tempoMsg.DataBytes.CopyTo(tempoBytes, 1);
			if (BitConverter.IsLittleEndian)
				Array.Reverse(tempoBytes);
			var tempo		= BitConverter.ToUInt32(tempoBytes, 0);
			_ticker.Tempo	= tempo;
		}

		private static void PlayFile(string fileName)
		{
			try
			{
				_file    = new MidiFile(fileName);
				_ticker  = new MidiTicker((ushort)_file.Division);

				var msgs = _file.GetNextMessages(0);
				foreach (var msg in msgs.Where(msg => msg is MidiMetaEventMessage && ((MidiMetaEventMessage) msg).MetaType == 0x51))
					AdjustTickerTempo(msg);
				ProcessMessages(msgs);

				_ticker.Tick += ticker_Tick;
				_ticker.Start();

				while (_ticker.Running)
					Thread.Sleep(500);
			}
			catch (Exception ex)
			{
				Console.WriteLine("Error playing file {0}: {1}", fileName, ex.Message);
			}
		}

		private static void ProcessMessages(object msgList)
		{
			var msgs      = (List<MidiMessage>)msgList;
			var msgString = new StringBuilder(msgs.Count * 6);

			foreach (MidiMessage msg in msgs)
			{
				if (msg is MidiChannelMessage)
					msgString.AppendFormat(";{0}", msg);
				else if (msg is MidiMetaEventMessage && ((MidiMetaEventMessage)msg).MetaType == 0x51)
					AdjustTickerTempo(msg);
			}

			if (msgString.Length > 0)
				WriteToStreams(msgString.ToString());
		}

		private static void WriteToStreams(string message)
		{
			var	data = Encoding.ASCII.GetBytes(message);
			_udpClient.Send(data, data.Length);
		}

		#region Event Handlers

		private static void ticker_Tick(ulong ticks)
		{
			var msgs = _file.GetNextMessages(ticks);

			(new Thread(ProcessMessages)).Start(msgs);

			if (_file.EndOfFile)
				_ticker.Stop();
		}

		#endregion

		#endregion
	}
}
