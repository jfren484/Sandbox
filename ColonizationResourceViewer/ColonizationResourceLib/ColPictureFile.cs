using Extensions;
using MadsPackLib;
using System.Collections.Generic;
using System.Drawing;

namespace ColonizationResourceLib
{
    /// <summary>
    /// A file containing a Colonization picture image resource.
    /// </summary>
    public class ColPictureFile: ColResourceFile
	{
		#region Properties

		/// <summary>
		/// The Size of the picture represented in the file.
		/// </summary>
		public Size Size { get; private set; }

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instance of ColPictureFile.
		/// </summary>
		/// <param name="filePath">Path to the file to be read.</param>
		/// <param name="defaultPalette">A Colonization color palette to be used when
		/// the file does not specify its own color palette or the color palette in
		/// the file is incomplete.</param>
		public ColPictureFile(string filePath, ColPalette defaultPalette) : base(filePath, defaultPalette) { }

		#region Overrides

		/// <summary>
		/// Gets an image in the file.
		/// </summary>
		/// <param name="imageIndex">The index of the image to
		/// retrieve.</param>
		/// <returns>A Bitmap image.</returns>
		public override Bitmap GetImage(int imageIndex)
		{
            Bitmap bmp;

            if (imageIndex == 0)
				bmp = GetPaletteImage();
			else
			{
				bmp = new Bitmap(Size.Width, Size.Height);

				int index = 0;
				for (int y = 0; y < Size.Height; y++)
				{
					for (int x = 0; x < Size.Width; x++)
					{
						var paletteIndex = ImageData[index++];
						var color = palette.Entries[paletteIndex];
						bmp.SetPixel(x, y, color);
					}
				}
			}

			return bmp;
		}

		/// <summary>
		/// Gets a list of images in the file.  Each image in the file is
		/// represented by a string array containing the image Identifier, the
		/// width in pixels, and the height in pixels.  The first item in the
		/// list is always an image showing the color palette.
		/// </summary>
		/// <returns>A List of string[].</returns>
		public override List<string[]> GetImageList()
		{
			var imageList =  base.GetImageList();

			imageList.Add(new[] { "Image", Size.Width.ToString(), Size.Height.ToString() });

			return imageList;
		}

		/// <summary>
		/// Process any entries in the MADSPACK-compressed file that cannot be
		/// handled at the base-class level.
		/// </summary>
		/// <param name="entries">A List of all MadsPackEntry objects in the
		/// file.</param>
		protected override void ProcessMadsPackEntries(List<MadsPackEntry> entries)
		{
			ImageData = entries[1].Data;
			Size = new Size(HeaderData.GetUInt16(2), HeaderData.GetUInt16(0));
		}

		#endregion

		#endregion
	}
}
