public interface INode {
	double Eval();
}

public class NumericNode : INode {
	private double value;
	public virtual double Eval() { return value; }
	public NumericNode(double v) { value = v; }
}

public class OperatorNode : INode {
	private INode left, right;
	private char oper;
	public double Eval() {
		double lhs = left.Eval();
		double rhs = right.Eval();
		//...
	}
}

public class ExpTree {
	public INode root = null;
	public static void Main(string [] args) {
		ExpTree tree = new ExpTree();
		tree.root = new NumericNode(6.0);
	}
}