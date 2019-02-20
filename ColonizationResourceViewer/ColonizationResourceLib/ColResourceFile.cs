using System.Collections.Generic;
using System.Drawing;
using MadsPackLib;

namespace ColonizationResourceLib
{
	/// <summary>
	/// A file containing Colonization image resources.
	/// </summary>
	public abstract class ColResourceFile
	{
		#region Properties and Member Variables

		/// <summary>
		/// A byte[] containing the data for the file header.
		/// </summary>
		public byte[] HeaderData { get; private set; }

		/// <summary>
		/// A byte[] containing the data for the color palette.
		/// </summary>
		public byte[] PaletteData { get; private set; }

		/// <summary>
		/// A byte[] containing the data for the image data itself.
		/// </summary>
		public byte[] ImageData { get; protected set; }

		/// <summary>
		/// The Colonization color palette to be used when rendering the image.
		/// </summary>
		protected readonly ColPalette palette;

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instance of ColResourceFile.
		/// </summary>
		/// <param name="data">A byte[] containing the contents of the
		/// file.</param>
		/// <param name="defaultPalette">A Colonization color palette to be used when
		/// the file does not specify its own color palette or the color palette in
		/// the file is incomplete.</param>
		public ColResourceFile(byte[] data, ColPalette defaultPalette)
		{
			// Decompress the data.
			MadsPack madsPackFile = new MadsPack(data);

			// Set the Header entry.
			this.HeaderData = madsPackFile.Entries[0].Data;

			// Handle the color Palette entry.
			if (madsPackFile.Entries.Count > 2)
			{
				this.PaletteData = madsPackFile.Entries[2].Data;

				this.palette = new ColPalette(defaultPalette, this.PaletteData);
			}
			else if (defaultPalette != null)
				this.palette = defaultPalette;
			else
				this.palette = new ColPalette();

			// Allow sub-classes to process any other entries.
			ProcessMadsPackEntries(madsPackFile.Entries);
		}

		/// <summary>
		/// Get an image that shows what the resource file's palette looks like.
		/// </summary>
		/// <returns>A Bitmap image.</returns>
		public Bitmap GetPaletteImage()
		{
			const int boxSize = 10;
			const int columns = 16;

			Bitmap bmp = new Bitmap(columns * (boxSize + 1) + 1, columns * (boxSize + 1) + 1);
			Graphics g = Graphics.FromImage(bmp);

			for (int i = 0; i < this.palette.Entries.Length; i++)
			{
				int top = i / columns * (boxSize + 1) + 1;
				int left = i % columns * (boxSize + 1) + 1;

				g.FillRectangle(new SolidBrush(this.palette.Entries[i]), left, top, boxSize, boxSize);
			}

			return bmp;
		}

		#region Abstract and Virtual Methods

		/// <summary>
		/// Gets an image in the file.
		/// </summary>
		/// <param name="imageIndex">The index of the image to
		/// retrieve.</param>
		/// <returns>A Bitmap image.</returns>
		public abstract Bitmap GetImage(int imageIndex);

		/// <summary>
		/// Gets a list of images in the file.  Each image in the file is
		/// represented by a string array containing the image Identifier and
		/// any other fields as appropriate.  The first item in the list is
		/// always an image showing the color palette.
		/// </summary>
		/// <returns>A List of string[].</returns>
		public virtual List<string[]> GetImageList()
		{
			List<string[]> imageList = new List<string[]>();

			imageList.Add(new string[] { "Palette" });

			return imageList;
		}

		/// <summary>
		/// Process any entries in the MADSPACK-compressed file that cannot be
		/// handled at the base-class level.
		/// </summary>
		/// <param name="entries">A List of all MadsPackEntry objects in the
		/// file.</param>
		protected abstract void ProcessMadsPackEntries(List<MadsPackEntry> entries);

		#endregion

		#endregion
	}
}
