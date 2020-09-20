using System;
using System.Collections.Generic;
using System.Drawing;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Windows.Forms;
using System.Collections;
using Fryz.Apps.NetworkMusic.NetworkMusicLib;
using Fryz.Apps.NetworkMusic.NetworkMusicLib.Messages;

namespace Fryz.Apps.NetworkMusic.NetworkMusicPlayer
{
	public partial class NetworkMusicPlayerForm : Form
	{
		#region Member Variables

		private int                     _checkCount;
		private bool                    _updatingCheckboxes;
						               
		private IPEndPoint              _endPoint;
		private readonly UdpClient      _conductorClient;
		private readonly MidiDevice     _midiDevice;

		private readonly List<CheckBox> _checkboxes;
		private readonly List<Label>    _labels;

		#endregion

		public NetworkMusicPlayerForm()
		{
			InitializeComponent();

			_checkboxes = new List<CheckBox> { chk0, chk1, chk2, chk3, chk4, chk5, chk6, chk7, chk8, chk9, chkA, chkB, chkC, chkD, chkE, chkF };
			_labels = new List<Label> { lbl0, lbl1, lbl2, lbl3, lbl4, lbl5, lbl6, lbl7, lbl8, lbl9, lblA, lblB, lblC, lblD, lblE, lblF };

			_midiDevice = new MidiDevice(0xFFFF);
			_conductorClient = new UdpClient(NetworkMusicConsts.NetworkMusicPort);
			_conductorClient.JoinMulticastGroup(IPAddress.Parse(NetworkMusicConsts.NetworkMusicMulticastIP));
		}

		private void CheckedChanged(object sender, EventArgs e)
		{
			if (!_updatingCheckboxes)
			{
				var bitArray = new BitArray(_checkboxes.ConvertAll(chk => chk.Checked).ToArray());
				var tempArray = new int[1];
				bitArray.CopyTo(tempArray, 0);

				SetChannels((ushort)tempArray[0]);
			}
		}

		private void CheckAllClick(object sender, EventArgs e)
		{
			_updatingCheckboxes = true;
			_checkboxes.ForEach(chk => chk.Checked = true);
			SetChannels(0xFFFF);
			_updatingCheckboxes = false;
		}

		private void UncheckAllClick(object sender, EventArgs e)
		{
			_updatingCheckboxes = true;
			_checkboxes.ForEach(chk => chk.Checked = false);
			SetChannels(0x0000);
			_updatingCheckboxes = false;
		}

		private void SetChannels(ushort newValue)
		{
			_midiDevice.Channels = newValue;
			lblChannelsValue.Text = _midiDevice.Channels.ToString("X");
		}

		private void CheckNewMessages()
		{
			_checkCount++;

			try
			{
				string msgString;

				lock (_conductorClient)
				{
					var data  = _conductorClient.Receive(ref _endPoint);
					msgString = Encoding.ASCII.GetString(data);
				}

				ProcessMessages(msgString);
			}
			catch (Exception ex)
			{
				Console.WriteLine(@"Exception thrown while reading from stream: {0}", ex.Message);
			}

			_checkCount--;
		}

		private void ProcessMessages(object messageBytes)
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

					if (message.MessageByte == MidiChannelMessageByte.NoteOn)
						_labels[(byte)message.Channel].BackColor = _midiDevice.PlaysChannel(message.Channel) ? Color.Green : Color.Red;
					else if (message.MessageByte == MidiChannelMessageByte.NoteOff)
						_labels[(byte)message.Channel].BackColor = SystemColors.Control;
					_midiDevice.Play(message);
				}
			}
		}

		#region Event Handlers

		private void NetworkMusicPlayerFormFormClosed(object sender, FormClosedEventArgs e)
		{
			if (_conductorClient != null)
				_conductorClient.Close();

			if (_midiDevice != null)
				_midiDevice.Close();
		}

		private void TmrCheckMessagesTick(object sender, EventArgs e)
		{
			CheckNewMessages();
		}

		#endregion
	}
}
