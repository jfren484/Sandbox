using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using Microsoft.Office.Core;
using Microsoft.Office.Interop.PowerPoint;
using PowerPointApplication = Microsoft.Office.Interop.PowerPoint.Application;
using System.Runtime.InteropServices;

namespace FbcPresentationValidator
{
	public partial class MainForm : Form
	{
		private Dictionary<string, Presentation> _presentations = new Dictionary<string,Presentation>();
		private PowerPointApplication _app;

		public MainForm()
		{
			InitializeComponent();

			_app = new PowerPointApplication();
			_app.WindowState = PpWindowState.ppWindowMinimized;
		}

		private void btnOpen_Click(object sender, EventArgs e)
		{
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				listFiles.Items.AddRange(openFileDialog.SafeFileNames);
				_presentations = openFileDialog.FileNames.ToDictionary(fileName => fileName, fileName => (Presentation)null);
			}
		}

		private void btnProcess_Click(object sender, EventArgs e)
		{
			foreach (var fileName in _presentations.Keys.ToList())
			{
				_presentations[fileName] = _app.Presentations.Open(fileName);
			}
		}

		private void MainForm_FormClosed(object sender, FormClosedEventArgs e)
		{
			foreach (var presentation in _presentations.Values)
				if (presentation != null)
					try { presentation.Close(); }
					catch (COMException) { }

			if (_app.Presentations.Count == 0)
				_app.Quit();
		}
	}
}
