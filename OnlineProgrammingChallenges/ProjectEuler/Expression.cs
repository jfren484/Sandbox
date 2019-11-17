using System.Collections.Generic;
using System.Linq;

namespace ProjectEuler
{
	public class Expression
	{
		public List<int> Numbers { get; set; }
		public List<Operator> Operators { get; set; }
		public List<int> OperatorOrder { get; set; }

		public override string ToString()
		{
			if (Numbers == null ||
				Operators == null ||
				OperatorOrder == null ||
				Numbers.Count == 0 ||
				Operators.Count != OperatorOrder.Count ||
				Operators.Count != Numbers.Count - 1)
				return "";

			var tempStrs = Numbers.Select(i => i.ToString()).ToList();
			var tempOps = new List<Operator>(Operators);

			foreach (var index in OperatorOrder)
			{
				tempStrs[index] = string.Format("({0} {1} {2})", tempStrs[index], (char)tempOps[index], tempStrs[index + 1]);
				tempOps.RemoveAt(index);
				tempStrs.RemoveAt(index + 1);
			}

			return tempStrs[0];
		}

		public int Evaluate()
		{
			var tempNums = Numbers.Select(i => (double)i).ToList();
			var tempOps = new List<Operator>(Operators);

			foreach (var index in OperatorOrder)
			{
				switch (tempOps[index])
				{
					case Operator.Add:
						tempNums[index] += tempNums[index + 1];
						break;
					case Operator.Subtract:
						tempNums[index] -= tempNums[index + 1];
						break;
					case Operator.Multiply:
						tempNums[index] *= tempNums[index + 1];
						break;
					case Operator.Divide:
						tempNums[index] /= tempNums[index + 1];
						break;
				}
				tempOps.RemoveAt(index);
				tempNums.RemoveAt(index + 1);
			}

			return tempNums[0] == (int)tempNums[0] ? (int)tempNums[0] : -1;
		}

		public enum Operator
		{
			Add = '+',
			Subtract = '-',
			Multiply = '*',
			Divide = '/'
		}
		public static readonly Operator[] AllOperators = new[] { Operator.Add, Operator.Subtract, Operator.Multiply, Operator.Divide };
	}
}
