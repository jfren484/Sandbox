using System.Drawing;

namespace GridPuzzleLib
{
	internal static class HelperFunctions
	{
		#region Static Methods

		public static RectangleF DrawValue(Graphics graphics, Font font, Color color, Rectangle bounds, string value)
		{
			RectangleF rect = new RectangleF();

			if (value != null && value.Trim().Length > 0)
			{
				rect.Size = HelperFunctions.MeasureDisplayString(graphics, value, font);

				rect.Location = new PointF(bounds.X + (bounds.Width - rect.Width) / 2, bounds.Y + (bounds.Height - rect.Height) / 2);

				graphics.DrawString(value, font, new SolidBrush(color), rect.X, rect.Y);
			}

			return rect;
		}

		public static SizeF MeasureDisplayString(Graphics graphics, string text, Font font)
		{
			StringFormat format = new StringFormat();

			format.SetMeasurableCharacterRanges(new CharacterRange[] { new CharacterRange(0, text.Length) });

			RectangleF rect = graphics.MeasureCharacterRanges(text, font, new RectangleF(0, 0, 1000, 1000), format)[0].GetBounds(graphics);

			return new SizeF(rect.Size.Width + rect.X * 2, rect.Size.Height + rect.Y * 2);
		}

		#endregion
	}
}
