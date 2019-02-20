using System;
using System.Drawing;
using System.Drawing.Imaging;

namespace ColonizationResourceLib
{
	/// <summary>
	/// A Colonization color palette.
	/// </summary>
	public class ColPalette
	{
		#region Properties

		/// <summary>
		/// An array of the Colors in the palette.
		/// </summary>
		public Color[] Entries { get; private set; }

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new Colonization color palette with the default color
		/// array (all transparent).
		/// </summary>
		public ColPalette()
		{
			this.Entries = new Bitmap(1, 1, PixelFormat.Format8bppIndexed).Palette.Entries;
		}

		/// <summary>
		/// Creates a new Colonization color palette by processing the palette
		/// data byte[].
		/// </summary>
		/// <param name="paletteData">A byte[] containing the color palette data
		/// (three bytes per color, one each for red, blue, and green).</param>

		public ColPalette(byte[] paletteData) : this(null, paletteData) { }

		/// <summary>
		/// Creates a new Colonization color palette by first copying the colors
		/// from the default palette (if provided) and then processing the
		/// palette data byte[].
		/// </summary>
		/// <param name="defaultPalette">The default color palette. May be
		/// null.</param>
		/// <param name="paletteData">A byte[] containing the color palette data
		/// (three bytes per color, one each for red, blue, and green).</param>
		public ColPalette(ColPalette defaultPalette, byte[] paletteData)
		{
			this.Entries = new Color[defaultPalette != null ? defaultPalette.Entries.Length : paletteData.Length / 3];

			if (defaultPalette != null)
				defaultPalette.Entries.CopyTo(this.Entries, 0);

			for (int i = 0; i < paletteData.Length - 2; i += 3)
				this.Entries[i / 3] = Color.FromArgb(
					Math.Min(paletteData[i] << 2, 0xFF),
					Math.Min(paletteData[i + 1] << 2, 0xFF),
					Math.Min(paletteData[i + 2] << 2, 0xFF));
		}

		#endregion
	}
}
