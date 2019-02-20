using System;
using System.Collections.Generic;
using System.Drawing;
using Extensions;
using MadsPackLib;

namespace ColonizationResourceLib
{
	/// <summary>
	/// A file containing Colonization sprite images.
	/// </summary>
	public class ColSpriteFile: ColResourceFile
	{
		#region Properties

		/// <summary>
		/// A byte[] containing the data for the sprite image list table.
		/// </summary>
		public byte[] ImageListData { get; private set; }

		/// <summary>
		/// The number of sprite images in the file.
		/// </summary>
		public int ImageCount { get; private set; }

		/// <summary>
		/// A list of entries in the sprite image list table.
		/// </summary>
		public ImageListEntry[] ImageListEntries { get; private set; }

		/// <summary>
		/// An array containing the sprite image objects defined in the file.
		/// </summary>
		public ColSprite[] Sprites { get; private set; }

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new instance of ColSpriteFile.
		/// </summary>
		/// <param name="data">A byte[] containing the contents of the
		/// file.</param>
		/// <param name="defaultPalette">A Colonization color palette to be used when
		/// the file does not specify its own color palette or the color palette in
		/// the file is incomplete.</param>
		public ColSpriteFile(byte[] data, ColPalette defaultPalette) : base(data, defaultPalette) { }

		#region Overrides

		/// <summary>
		/// Gets an image in the file.
		/// </summary>
		/// <param name="imageIndex">The index of the image to
		/// retrieve.</param>
		/// <returns>A Bitmap image.</returns>
		public override Bitmap GetImage(int imageIndex)
		{
			return imageIndex == 0 ? this.GetPaletteImage() : this.Sprites[imageIndex - 1].GetImage();
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

			int index = 0;
			foreach (ImageListEntry entry in this.ImageListEntries)
				imageList.Add(new string[]
				{
					String.Format("Image {0}", ++index),
					entry.Width.ToString(),
					entry.Height.ToString()
				});

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
			this.ImageListData = entries[1].Data;
			this.ImageData = entries[3].Data;

			this.ImageCount = this.HeaderData.GetUInt16(38);

			if (this.ImageListData.Length != this.ImageCount * 16)
				throw new ColResourceException("Image count does not match number of image records.");

			this.ImageListEntries = new ImageListEntry[this.ImageCount];
			for (int i = 0; i < this.ImageCount; i++)
				this.ImageListEntries[i] = new ImageListEntry(this.ImageListData.GetSubset(i * 16, 16));

			this.Sprites = new ColSprite[this.ImageCount];
			for (int i = 0; i < this.ImageCount; i++)
			{
				this.Sprites[i] = new ColSprite(palette,
					new Size(this.ImageListEntries[i].Width, this.ImageListEntries[i].Height),
					this.ImageData.GetSubset(this.ImageListEntries[i].StartAddress, this.ImageListEntries[i].Length));
			}
		}

		#endregion

		#endregion
	}
}
