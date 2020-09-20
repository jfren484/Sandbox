using System.Collections.Generic;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib
{
	/// <summary>
	/// Constants for use by NetworkMusic.
	/// </summary>
	public static class NetworkMusicConsts
	{
		/// <summary>
		/// The port to use for communicating between Conductors and Players.
		/// </summary>
		public const int		NetworkMusicPort				= 51273;

		/// <summary>
		/// The IP Address to use for multicasting between Conductors and Players.
		/// </summary>
		public const string	NetworkMusicMulticastIP	= "239.5.12.73";

		/// <summary>
		/// A list of statuses for System Common messages.
		/// </summary>
		public static readonly List<byte>	SysCommonStatuses		= new List<byte>(new byte[] { 0xF1, 0xF2, 0xF3, 0xF6 });

		/// <summary>
		/// A list of statuses for System Exclusive messages.
		/// </summary>
		public static readonly List<byte>	SysExStatuses				= new List<byte>(new byte[] { 0xF0, 0xF7 });

		/// <summary>
		/// A list of statuses for System Realtime messages.
		/// </summary>
		public static readonly List<byte>	SysRealtimeStatuses	= new List<byte>(new byte[] { 0xF8, 0xF9, 0xFA, 0xFB, 0xFC, 0xFE });

		/// <summary>
		/// A list of statuses that are not valid.
		/// </summary>
		public static readonly List<byte>	InvalidStatuses			= new List<byte>(new byte[] { 0xF4, 0xF5, 0xFD });
	}
}
