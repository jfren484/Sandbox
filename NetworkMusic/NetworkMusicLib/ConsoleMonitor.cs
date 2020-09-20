using System.Runtime.InteropServices;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib
{
	/// <summary>
	/// Handles monitoring a Console application being closed by the user.
	/// </summary>
	public class ConsoleMonitor
	{
		#region Member Variables

		/// <summary>
		/// Occurs when the user attempts to exit the console application.
		/// </summary>
		public event ConsoleExitHandler Exiting = null;

		#endregion

		#region Delegates

		/// <summary>
		/// Handles when the user attempts to exit the console.
		/// </summary>
		/// <param name="CtrlType">The type of exit the user is attempting
		/// (ctrl-break, ctrl-c, the close button, etc.)</param>
		/// <returns>A boolean indicating whether to cancel the exit.</returns>
		private delegate bool ConsoleCtrlHandler(int CtrlType);

		/// <summary>
		/// Handles when the user attempts to exit the console application.
		/// </summary>
		public delegate void ConsoleExitHandler();

		#endregion

		#region Methods

		#region External Method

		[DllImport("Kernel32")]
		private static extern bool SetConsoleCtrlHandler(ConsoleCtrlHandler Handler, bool Add);

		#endregion

		private bool ConsoleEndTrap(int ctrlType)
		{
			if (Exiting != null)
				Exiting();

			return false;
		}

		/// <summary>
		/// Creates a new instance of the ConsoleMonitor class.
		/// </summary>
		public ConsoleMonitor()
		{
			SetConsoleCtrlHandler(new ConsoleCtrlHandler(ConsoleEndTrap), true);
		}

		#endregion
	}
}
