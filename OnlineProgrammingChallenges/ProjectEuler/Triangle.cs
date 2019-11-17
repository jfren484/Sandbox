namespace ProjectEuler
{
	public class Triangle
	{
		public int A { get; set; }
		public int B { get; set; }
		public int C { get; set; }

		public int Perimeter
		{
			get { return A + B + C; }
		}

		public override string ToString()
		{
			return string.Format("{{{0},{1},{2}}}", A, B, C);
		}
	}
}
