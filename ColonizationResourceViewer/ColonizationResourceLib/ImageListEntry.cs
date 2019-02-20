using Extensions;

namespace ColonizationResourceLib
{
	/// <summary>
	/// Represents an entry in the image list table.
	/// </summary>
	public class ImageListEntry
	{
		#region Properties

		/// <summary>
		/// The byte offset of the starting point of this image entry's data in
		/// the data entry of the file.
		/// </summary>
		public uint StartAddress { get; private set; }

		/// <summary>
		/// The length of this image entry's data in the data entry of the file.
		/// </summary>
		public uint Length { get; private set; }

		/// <summary>
		/// Unknown short value 1.
		/// </summary>
		public ushort UShort1 { get; private set; }

		/// <summary>
		/// Unknown short value 2.
		/// </summary>
		public ushort UShort2 { get; private set; }

		/// <summary>
		/// The width of the image, in pixels.
		/// </summary>
		public ushort Width { get; private set; }

		/// <summary>
		/// The height of the image, in pixels.
		/// </summary>
		public ushort Height { get; private set; }

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instace of ImageListEntry.
		/// </summary>
		/// <param name="data">The byte array that contains the data for the
		/// entry.</param>
		public ImageListEntry(byte[] data)
		{
			if (data.Length != 16)
				throw new ColResourceException("Image List entry should contain 16 bytes.");

			this.StartAddress	= data.GetUInt32(0);
			this.Length			= data.GetUInt32(4);
			this.UShort1		= data.GetUInt16(8);
			this.UShort2		= data.GetUInt16(10);
			this.Width			= data.GetUInt16(12);
			this.Height			= data.GetUInt16(14);
		}

		#endregion
	}
}
