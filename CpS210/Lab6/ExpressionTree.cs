namespace Lab6
{
    public interface INode
    {
        double Eval();
    }

    public class NumericNode : INode
    {
        private double _value;

        public NumericNode(double v)
        {
            _value = v;
        }

        public virtual double Eval()
        {
            return _value;
        }
    }

    public class OperatorNode : INode
    {
        private INode _left, _right;
        private char _oper;

        public OperatorNode(char o)
        {
            _oper = o;
        }

        public double Eval()
        {
            double lhs = _left.Eval();
            double rhs = _right.Eval();
            double result = 0;

            switch (_oper)
            {
                case '+':
                    result = lhs + rhs;
                    break;
                // ...
            }

            return result;
        }
    }

    public class ExpressionTree
    {
        public INode Root = null;

        public static void Main(string[] args)
        {
            ExpressionTree tree = new ExpressionTree();
            tree.Root = new NumericNode(6.0);
        }
    }
}
