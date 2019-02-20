using System.Collections.Generic;
using System.Drawing;
using Extensions;
using MadsPackLib;

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
		/// <param name="data">A byte[] containing the contents of the
		/// file.</param>
		/// <param name="defaultPalette">A Colonization color palette to be used when
		/// the file does not specify its own color palette or the color palette in
		/// the file is incomplete.</param>
		public ColPictureFile(byte[] data, ColPalette defaultPalette) : base(data, defaultPalette) { }

		#region Overrides

		/// <summary>
		/// Gets an image in the file.
		/// </summary>
		/// <param name="imageIndex">The index of the image to
		/// retrieve.</param>
		/// <returns>A Bitmap image.</returns>
		public override Bitmap GetImage(int imageIndex)
		{
			Bitmap bmp = null;

			if (imageIndex == 0)
				bmp = GetPaletteImage();
			else
			{
				bmp = new Bitmap(this.Size.Width, this.Size.Height);

				int index = 0;
				for (int y = 0; y < this.Size.Height; y++)
				{
					int yOffset = y * this.Size.Width;

					for (int x = 0; x < this.Size.Width; x++)
					{
						byte paletteIndex = this.ImageData[index++];
						Color color = this.palette.Entries[paletteIndex];
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
			List<string[]> imageList =  base.GetImageList();

			imageList.Add(new string[] { "Image", this.Size.Width.ToString(), this.Size.Height.ToString() });

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
			this.ImageData = entries[1].Data;
			this.Size = new Size(this.HeaderData.GetUInt16(2), this.HeaderData.GetUInt16(0));
		}

		#endregion

		#endregion
	}
}
