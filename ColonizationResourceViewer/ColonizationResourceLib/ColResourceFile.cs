using MadsPackLib;
using System.Collections.Generic;
using System.Drawing;
using System.IO;

namespace ColonizationResourceLib
{
    /// <summary>
    /// A file containing Colonization image resources.
    /// </summary>
    public abstract class ColResourceFile
	{
		#region Properties and Member Variables

		/// <summary>
		/// A string containing the name of the file.
		/// </summary>
		public string FileName { get; private set; }

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
        /// <param name="filePath">Path to the file to be read.</param>
        /// <param name="defaultPalette">A Colonization color palette to be used when
        /// the file does not specify its own color palette or the color palette in
        /// the file is incomplete.</param>
        public ColResourceFile(string filePath, ColPalette defaultPalette)
		{
			FileName = Path.GetFileNameWithoutExtension(filePath);

			// Decompress the data.
			var madsPackFile = new MadsPack(File.ReadAllBytes(filePath));

			// Set the Header entry.
			HeaderData = madsPackFile.Entries[0].Data;

			// Handle the color Palette entry.
			if (madsPackFile.Entries.Count > 2)
			{
				PaletteData = madsPackFile.Entries[2].Data;

				palette = new ColPalette(defaultPalette, PaletteData);
			}
			else if (defaultPalette != null)
				palette = defaultPalette;
			else
				palette = new ColPalette();

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

			var bmp = new Bitmap(columns * (boxSize + 1) + 1, columns * (boxSize + 1) + 1);
			var g = Graphics.FromImage(bmp);

			for (var i = 0; i < palette.Entries.Length; i++)
			{
				var top = i / columns * (boxSize + 1) + 1;
				var left = i % columns * (boxSize + 1) + 1;

				g.FillRectangle(new SolidBrush(palette.Entries[i]), left, top, boxSize, boxSize);
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
			var imageList = new List<string[]>
			{
				new[] { "Palette" }
			};

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
