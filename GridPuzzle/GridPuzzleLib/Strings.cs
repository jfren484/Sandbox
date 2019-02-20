namespace GridPuzzleLib
{
	internal static class Strings
	{
		#region Error Messages

		public const string	ErrMsgGridTypeNotImplemented_p	= "Grid type {0} not implemented.";
		public const string	ErrMsgInvalidAnchorDividerWidth	= "AnchorDividerWidth must be greater than 0.";
		public const string	ErrMsgInvalidCellArray					= "Cell array length does not match rows * cols.";
		public const string	ErrMsgInvalidCirclePenWidth			= "CirclePenWidth must be greater than 0.";
		public const string	ErrMsgInvalidPuzzleFile					= "Could not parse puzzle file. File may be an invalid puzzle file.";

		#endregion

		#region XML Tags

		public const string	XmlNameElCell								= "cell";
		public const string	XmlNameElLegend							= "legend";
		public const string	XmlNameElPuzzle							= "puzzle";

		public const string XmlNameAttrCellLocked				= "locked";
		public const string	XmlNameAttrCellState				= "state";
		public const string XmlNameAttrCellType					= "type";
		public const string XmlNameAttrCellValue				= "value";
		public const string XmlNameAttrCellValues				= "values";
		public const string	XmlNameAttrGridCols					= "columns";
		public const string	XmlNameAttrGridRows					= "rows";
		public const string XmlNameAttrGridSInnerCols		= "innercolumns";
		public const string XmlNameAttrGridSInnerRows		= "innerrows";
		public const string XmlNameAttrGridType					= "type";
		public const string XmlNameAttrLegendQuantities	= "quantities";

		#endregion
	}
}
