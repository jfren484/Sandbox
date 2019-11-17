// ReSharper disable AccessToModifiedClosure
// ReSharper disable LoopCanBeConvertedToQuery
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of all numbers that can be written as pandigital products.")]
	public class Problem032Solver : IProblemSolver
	{
		public string Execute() // < 1 second
		{
			var pandigitalProducts = new List<int>();

			var used = new bool[10];

			for (var c1 = 1; c1 < 10; c1++)
			{
				used[c1] = true;

				for (var c2 = 1; c2 < 10; c2++)
				{
					if (used[c2]) continue;
					used[c2] = true;

					for (var c3 = 1; c3 < 10; c3++)
					{
						if (used[c3]) continue;
						used[c3] = true;

						for (var c4 = 1; c4 < 10; c4++)
						{
							if (used[c4]) continue;
							used[c4] = true;

							for (var c5 = 1; c5 < 10; c5++)
							{
								if (used[c5]) continue;
								used[c5] = true;

								for (var c6 = 1; c6 < 10; c6++)
								{
									if (used[c6]) continue;
									used[c6] = true;

									for (var c7 = 1; c7 < 10; c7++)
									{
										if (used[c7]) continue;
										used[c7] = true;

										for (var c8 = 1; c8 < 10; c8++)
										{
											if (used[c8]) continue;
											used[c8] = true;

											for (var c9 = 1; c9 < 10; c9++)
											{
												if (used[c9]) continue;

												var nums = new[] { c1, c2, c3, c4, c5, c6, c7, c8, c9 };
												for (var starIndex = 1; starIndex < 8; starIndex++)
													for (var equalIndex = starIndex + 2; equalIndex < 9; equalIndex++)
													{
														var m1 = nums[0];
														for (var m1X = 1; m1X < starIndex; m1X++)
															m1 = m1 * 10 + nums[m1X];

														var m2 = nums[starIndex];
														for (var m2X = starIndex + 1; m2X < equalIndex; m2X++)
															m2 = m2 * 10 + nums[m2X];

														var prod = nums[equalIndex];
														for (var prodX = equalIndex + 1; prodX < 9; prodX++)
															prod = prod * 10 + nums[prodX];

														if (prod == m1 * m2)
															pandigitalProducts.Add(prod);
													}
											}

											used[c8] = false;
										}

										used[c7] = false;
									}

									used[c6] = false;
								}

								used[c5] = false;
							}

							used[c4] = false;
						}

						used[c3] = false;
					}

					used[c2] = false;
				}

				used[c1] = false;
			}

			return pandigitalProducts.Distinct().Sum().ToString();
		}

		public string Execute2() // ~15 seconds
		{
			var chars01 = new List<char> { '1', '2', '3', '4', '5', '6', '7', '8', '9' };
			var chars23 = new List<char> { '1', '2', '3', '4', '5', '6', '7', '8', '9', '*' };
			var chars48 = new List<char> { '1', '2', '3', '4', '5', '6', '7', '8', '9', '*', '=' };
			var chars90 = new List<char> { '1', '2', '3', '4', '5', '6', '7', '8', '9', '=' };
			var chars11 = new List<char> { '1', '2', '3', '4', '5', '6', '7', '8', '9' };

			var pandigitalProducts = new List<int>();
			var equalMin = 10;
			var equalUsed = false;
			foreach (var c1 in chars01)
			{
				foreach (var c2 in chars23.Where(c2 => c2 != c1))
				{
					if (c2 == '*') equalMin = 4;

					foreach (var c3 in chars23.Where(c3 => c3 != c2 && c3 != c1))
					{
						if (c3 == '*') equalMin = 5;

						foreach (var c4 in chars48.Where(c4 => c4 != c3 && c4 != c2 && c4 != c1 && (c4 != '=' || equalMin <= 4)))
						{
							if (c4 == '*') equalMin = 6;
							if (c4 == '=') equalUsed = true;

							foreach (var c5 in chars48.Where(c5 => c5 != c4 && c5 != c3 && c5 != c2 && c5 != c1 && (c5 != '=' || equalMin <= 5)))
							{
								if (c5 == '*') equalMin = 7;
								if (c5 == '=') equalUsed = true;

								foreach (var c6 in chars48.Where(c6 => c6 != c5 && c6 != c4 && c6 != c3 && c6 != c2 && c6 != c1 && (c6 != '=' || equalMin <= 6)))
								{
									if (c6 == '*') equalMin = 8;
									if (c6 == '=') equalUsed = true;

									foreach (var c7 in chars48.Where(c7 => c7 != c6 && c7 != c5 && c7 != c4 && c7 != c3 && c7 != c2 && c7 != c1 && (c7 != '=' || equalMin <= 7)))
									{
										if (c7 == '*') equalMin = 9;
										if (c7 == '=') equalUsed = true;

										foreach (var c8 in chars48.Where(c8 => (equalMin != 10 || c8 == '*') && c8 != c7 && c8 != c6 && c8 != c5 && c8 != c4 && c8 != c3 && c8 != c2 && c8 != c1 && (c8 != '=' || equalMin <= 8)))
										{
											if (c8 == '=') equalUsed = true;

											foreach (var c9 in chars90.Where(c9 => c9 != c8 && c9 != c7 && c9 != c6 && c9 != c5 && c9 != c4 && c9 != c3 && c9 != c2 && c9 != c1 && (c9 != '=' || equalMin <= 9)))
											{
												if (c9 == '=') equalUsed = true;

												foreach (var c10 in chars90)
												{
													if ((!equalUsed && c10 != '=') || c10 == c9 || c10 == c8 || c10 == c7 || c10 == c6 || c10 == c5 || c10 == c4 || c10 == c3 || c10 == c2 || c10 == c1) continue;

													foreach (var c11 in chars11)
													{
														if (c11 == c10 || c11 == c9 || c11 == c8 || c11 == c7 || c11 == c6 || c11 == c5 || c11 == c4 || c11 == c3 || c11 == c2 || c11 == c1) continue;

														var expression = new string(new[] { c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11 });

														var starIndex = expression.IndexOf('*');
														var equalIndex = expression.IndexOf('=');
														if (starIndex < equalIndex - 1 && starIndex > 0 && equalIndex < 10)
														{
															var m1 = int.Parse(expression.Substring(0, starIndex));
															var m2 = int.Parse(expression.Substring(starIndex + 1, equalIndex - starIndex - 1));
															var p = int.Parse(expression.Substring(equalIndex + 1));

															if (p == m1 * m2)
																pandigitalProducts.Add(p);
														}
													}
												}
											}

											if (c8 == '=') equalUsed = false;
										}

										if (c7 == '=') equalUsed = false;
										if (c7 == '*') equalMin = 10;
									}

									if (c6 == '=') equalUsed = false;
									if (c6 == '*') equalMin = 10;
								}

								if (c5 == '=') equalUsed = false;
								if (c5 == '*') equalMin = 10;
							}

							if (c4 == '=') equalUsed = false;
							if (c4 == '*') equalMin = 10;
						}

						if (c3 == '*') equalMin = 10;
					}

					if (c2 == '*') equalMin = 10;
				}
			}

			return pandigitalProducts.Distinct().Sum().ToString();
		}

		public string Execute1() // ~20 minutes
		{
			var chars1 = new[] {'1', '2', '3', '4', '5', '6', '7', '8', '9', '*', '='};

			var pandigitalProducts = new List<int>();

			foreach (var c1 in chars1)
			{
				var chars2 = chars1.Except(new[] {c1});
				foreach (var c2 in chars2)
				{
					var chars3 = chars2.Except(new[] { c2 });
					foreach (var c3 in chars3)
					{
						var chars4 = chars3.Except(new[] { c3 });
						foreach (var c4 in chars4)
						{
							var chars5 = chars4.Except(new[] { c4 });
							foreach (var c5 in chars5)
							{
								var chars6 = chars5.Except(new[] { c5 });
								foreach (var c6 in chars6)
								{
									var chars7 = chars6.Except(new[] { c6 });
									foreach (var c7 in chars7)
									{
										var chars8 = chars7.Except(new[] { c7 });
										foreach (var c8 in chars8)
										{
											var chars9 = chars8.Except(new[] { c8 });
											foreach (var c9 in chars9)
											{
												var chars10 = chars9.Except(new[] { c9 });
												foreach (var c10 in chars10)
												{
													var c11 = chars10.Except(new[] {c10}).Single();

													var expression = new string(new[] { c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11 });

													var starIndex = expression.IndexOf('*');
													var equalIndex = expression.IndexOf('=');
													if (starIndex < equalIndex - 1 && starIndex > 0 && equalIndex < 10)
													{
														var m1 = int.Parse(expression.Substring(0, starIndex));
														var m2 = int.Parse(expression.Substring(starIndex + 1, equalIndex - starIndex - 1));
														var p = int.Parse(expression.Substring(equalIndex + 1));

														if (p == m1 * m2)
															pandigitalProducts.Add(p);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}

			return pandigitalProducts.Distinct().Sum().ToString();
		}
	}
}
// ReSharper restore AccessToModifiedClosure
// ReSharper restore LoopCanBeConvertedToQuery
