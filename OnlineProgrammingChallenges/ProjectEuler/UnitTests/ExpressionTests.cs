using System.Collections.Generic;
using NUnit.Framework;
using ProjectEuler;

namespace UnitTests
{
	[TestFixture]
	public class ExpressionTests
	{
		private Expression _defaultExpression;

		[SetUp]
		public void Initialize()
		{
			_defaultExpression = new Expression
			{
				Numbers = new List<int> { 1, 2, 3 },
				Operators = new List<Expression.Operator> { Expression.Operator.Add, Expression.Operator.Subtract },
				OperatorOrder = new List<int> { 0, 0 }
			};
		}

		[Test]
		public void TestNumericExpressionToString1()
		{
			// Arrange
			const string expectedResult = "((1 + 2) - 3)";

			// Act
			var actualResult = _defaultExpression.ToString();

			// Assert
			Assert.AreEqual(expectedResult, actualResult);
		}

		[Test]
		public void TestNumericExpressionToString2()
		{
			// Arrange
			_defaultExpression.OperatorOrder = new List<int> { 1, 0 };
			const string expectedResult = "(1 + (2 - 3))";

			// Act
			var actualResult = _defaultExpression.ToString();

			// Assert
			Assert.AreEqual(expectedResult, actualResult);
		}

		[Test]
		public void TestNumericEvaluate1()
		{
			// Arrange
			const int expectedResult = 0;

			// Act
			var actualResult = _defaultExpression.Evaluate();

			// Assert
			Assert.AreEqual(expectedResult, actualResult);
		}

		[Test]
		public void TestNumericEvaluate2()
		{
			// Arrange
			_defaultExpression.OperatorOrder = new List<int> { 1, 0 };
			const int expectedResult = 0;

			// Act
			var actualResult = _defaultExpression.Evaluate();

			// Assert
			Assert.AreEqual(expectedResult, actualResult);
		}

		[Test]
		public void TestNumericEvaluate3()
		{
			// Arrange
			_defaultExpression.OperatorOrder = new List<int> { 1, 0 };
			_defaultExpression.Operators[1] = Expression.Operator.Multiply;
			const int expectedResult = 7;

			// Act
			var actualResult = _defaultExpression.Evaluate();

			// Assert
			Assert.AreEqual(expectedResult, actualResult);
		}
	}
}
