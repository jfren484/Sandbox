using System;
using System.Collections.Generic;
using System.IO;
using Fryz.Apps.NetworkMusic.NetworkMusicLib;
using Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages;

namespace Fryz.Apps.NetworkMusic.NMTest
{
	class NMTest
	{
		private static MidiFile		file	= null;
		private static MidiTicker	ticker	= null;
		private static MidiDevice	midiDev	= null;

		static void Main(string[] args)
		{
			string	type	= args[0];

			if (type == "list")
				ListFiles(args[1]);
			else if (type == "play")
				PlayFile(args[1]);
			else
				throw new Exception(String.Format("Invalid run type: {0} - use \"list\" or \"play\".", type));
		}

		private static void AdjustTickerTempo(MidiMessage tempoMsg)
		{
			byte[] tempoBytes	= new byte[4];
			tempoMsg.DataBytes.CopyTo(tempoBytes, 1);
			if (BitConverter.IsLittleEndian)
				Array.Reverse(tempoBytes);
			uint tempo		= BitConverter.ToUInt32(tempoBytes, 0);
			ticker.Tempo	= tempo;
		}

		private static void ListFiles(string path)
		{
			string		dir		= Path.GetDirectoryName(path);
			string		pat		= Path.GetFileName(path);

			MidiFile	file	= null;
			foreach (string fileName in Directory.GetFiles(dir, pat, SearchOption.TopDirectoryOnly))
			{
				Console.WriteLine(fileName);

				try
				{
					file	= new MidiFile(fileName);

					Console.WriteLine(" Type: {0}\n Tracks: {1}\n Division: {2:X04}", file.Format, file.TrackCount, file.Division);
				}
				catch (Exception ex)
				{
					Console.WriteLine(" Exception: {0}", ex.Message);
				}

				Console.WriteLine();
			}
		}

		private static void PlayFile(string path)
		{
			file	= new MidiFile(path);
			midiDev	= new MidiDevice();
			ticker	= new MidiTicker((ushort)file.Division);

			List<MidiMessage> msgs	= file.GetNextMessages(0);
			foreach (MidiMessage msg in msgs)
			{
				if (msg is MidiMetaEventMessage && ((MidiMetaEventMessage)msg).MetaType == 0x51)
					AdjustTickerTempo(msg);
			}
			ProcessMessages(msgs);

			ticker.Tick	+= new MidiTicker.TickHandler(ticker_Tick);
			ticker.Start();

			while (ticker.Running)
				System.Threading.Thread.Sleep(1000);
		}

		private static void ProcessMessages(List<MidiMessage> msgs)
		{
			foreach (MidiMessage msg in msgs)
			{
				if (msg is MidiChannelMessage)
					midiDev.Play((MidiChannelMessage)msg);
				else if (msg is MidiMetaEventMessage && ((MidiMetaEventMessage)msg).MetaType == 0x51)
					AdjustTickerTempo(msg);
			}
		}

		private static void ticker_Tick(ulong ticks)
		{
			List<MidiMessage>	msgs	= file.GetNextMessages(ticks);

			ProcessMessages(msgs);

			if (file.EndOfFile)
				ticker.Stop();
		}
	}
}
