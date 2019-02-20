using System;
using System.Drawing;

namespace ColonizationResourceLib
{
	/// <summary>
	/// A Colonization sprite image.
	/// </summary>
	public class ColSprite
	{
		#region Properties and Member Variables

		/// <summary>
		/// The Size of the sprite image.
		/// </summary>
		public Size Size { get; private set; }

		/// <summary>
		/// A byte[] containing the sprite image data.
		/// </summary>
		public byte[] Data { get; private set; }

		/// <summary>
		/// The Colonization color palette used by this sprite image.
		/// </summary>
		public ColPalette Palette { get; private set; }

		#endregion

		#region Methods

		/// <summary>
		/// Create a new Colonization sprite image object.
		/// </summary>
		/// <param name="palette">The Colonization color palette used by this
		/// sprite image.</param>
		/// <param name="size">The Size of the sprite image.</param>
		/// <param name="data">A byte[] containing the sprite image
		/// data.</param>
		public ColSprite(ColPalette palette, Size size, byte[] data)
		{
			this.Palette = palette;
			this.Size = size;
			this.Data = data;
		}

		/// <summary>
		/// Gets the color in the palette specified by the paletteIndex
		/// parameter.
		/// </summary>
		/// <param name="paletteIndex">The index into the palette at which to
		/// retrieve a Color.</param>
		/// <returns>A Color (Color.Transparent if the paletteIndex ==
		/// 0xFD).</returns>
		private Color GetColor(byte paletteIndex)
		{
			return (paletteIndex == 0xFD ? Color.Transparent : this.Palette.Entries[paletteIndex]);
		}

		/// <summary>
		/// Creates an image from the Data property.
		/// </summary>
		/// <returns>A Bitmap image.</returns>
		public Bitmap GetImage()
		{
			int index = 0;

			Bitmap bmp = new Bitmap(this.Size.Width, this.Size.Height);

			int x = 0;
			int y = 0;
			byte b = 0;
			byte count = 0;

			while (index < this.Data.Length)
			{
				b = this.Data[index++];

				switch (b)
				{
					case 0xFF:
						// Blank line.
						break;
					case 0xFE:
						// Normal line (individual pixel colors and sequences of pixels).
						while ((b = this.Data[index++]) != 0xFF)
						{
							if (b == 0xFE)
							{
								count = this.Data[index++];
								b = this.Data[index++];

								for (int i = 0; i < count; i++)
									bmp.SetPixel(x++, y, GetColor(b));
							}
							else
								bmp.SetPixel(x++, y, GetColor(b));
						}
						break;
					case 0xFD:
						// Sequence line (all values in this line are represented by two bytes - count, then color)
						while ((count = this.Data[index++]) != 0xFF)
						{
							b = this.Data[index++];

							for (int i = 0; i < count; i++)
								bmp.SetPixel(x++, y, GetColor(b));
						}
						break;
					case 0xFC:
						// End of image data.
						if (index != this.Data.Length)
							throw new ColResourceException("End of Data byte encountered before end of data array.");
						break;
					default:
						throw new ColResourceException(String.Format("Unexpected byte at beginning of line: {0:X02}", b));
				}

				// Go to the beginning of the next horizontal line in the image.
				x = 0;
				y++;
			}

			return bmp;
		}

		#endregion
	}
}
