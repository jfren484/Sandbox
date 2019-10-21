public interface Node {
	double eval();
}

public class NumericNode : Node {
	private double value;
	public virtual double eval() { return value; }
	public NumericNode(double v) { value = v; }
}

public class OperatorNode : Node {
	private Node left, right;
	private char oper;
	public double eval() {
		double lhs = left.eval();
		double rhs = right.eval();
		//...
	}
}

public class ExpTree {
	public Node root = null;
	public static void Main(string [] args) {
		ExpTree tree = new ExpTree();
		tree.root = new NumericNode(6.0);
	}
}