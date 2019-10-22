using System;

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

        public double Eval()
        {
            return _value;
        }

        public override string ToString()
        {
            return _value.ToString();
        }
    }

    public class OperatorNode : INode
    {
        private char _oper;
        private INode _left, _right;

        public OperatorNode(char o, INode left, INode right)
        {
            _oper = o;
            _left = left;
            _right = right;
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
                case '-':
                    result = lhs - rhs;
                    break;
                case '*':
                    result = lhs * rhs;
                    break;
                case '/':
                    result = lhs / rhs;
                    break;
                case '%':
                    result = lhs % rhs;
                    break;
                case '^':
                    result = Math.Pow(lhs, rhs);
                    break;
            }

            return result;
        }

        public override string ToString()
        {
            return $"{_oper}({_left},{_right})";
        }
    }

    public class ExpressionTree
    {
        public INode Root = null;

        public ExpressionTree(string expression)
        {
            if (expression.Length == 0)
            {
                return;
            }

            const string operators = "+-*/^";
            Stack<INode> stack = new Stack<INode>();

            for (int i = 0; i < expression.Length; ++i)
            {
                char c = expression[i];

                if (char.IsDigit(c))
                {
                    int value = c - '0';

                    // Collect all digits until we get to a non-digit or end-of-string
                    while (i < expression.Length - 1 && char.IsDigit(expression[i + 1]))
                    {
                        c = expression[++i];
                        value = value * 10 + (c - '0');
                    }

                    stack.Push(new NumericNode(value));
                }
                else if (operators.Contains(c))
                {
                    if (stack.IsEmpty())
                    {
                        throw new ApplicationException($"No operands for '{c}' operator.");
                    }
                    INode right = stack.Pop();

                    if (stack.IsEmpty())
                    {
                        throw new ApplicationException($"Not enough operands for '{c}' operator.");
                    }
                    INode left = stack.Pop();

                    stack.Push(new OperatorNode(c, left, right));
                }
                else if (char.IsWhiteSpace(c))
                {
                    // Skip character - space, tab, etc.
                }
                else
                {
                    throw new ApplicationException($"Unrecognized character: '{c}'");
                }
            }

            if (stack.IsEmpty())
            {
                throw new ApplicationException("No operands or operators encountered.");
            }

            Root = stack.Pop();

            if (!stack.IsEmpty())
            {
                throw new ApplicationException("Too many operands in expression.");
            }
        }

        public override string ToString()
        {
            return $"({Root})";
        }

        public static void Main(string[] args)
        {
            ExpressionTree tree;

            string line = Console.ReadLine();
            while (line != null)
            {
                try
                {
                    tree = new ExpressionTree(line);

                    Console.WriteLine($"The expression tree is: {tree}");
                    Console.WriteLine($"and its value is: {tree.Root?.Eval() ?? 0}");
                }
                catch (ApplicationException ex)
                {
                    Console.WriteLine(ex.Message);
                }

                line = Console.ReadLine();
            }
        }
    }
}
