using System;

namespace ColonizationResourceLib
{
	/// <summary>
	/// An exception related to the data in a Colonization resource file.
	/// </summary>
	public class ColResourceException: Exception
	{
		#region Methods

		/// <summary>
		/// Create a new instance of ColResourceException.
		/// </summary>
		/// <param name="message">The message that describes the error.</param>
		public ColResourceException(string message) : base(message) { }

		#endregion
	}
}
