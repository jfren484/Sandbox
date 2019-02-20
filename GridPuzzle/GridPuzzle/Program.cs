using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace GridPuzzle
{
	static class Program
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main(string[] args)
		{
			Application.EnableVisualStyles();
			Application.SetCompatibleTextRenderingDefault(false);
			Application.Run(new GridPuzzleForm(args.Length == 0 ? null : args[0]));
		}
	}
}