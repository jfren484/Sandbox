using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("How many hands did player one win in the game of poker?")]
	public class Problem054Solver : IProblemSolver
	{
		private static readonly Dictionary<char, int> _ranks = new Dictionary<char, int>
			{
				{'2', 2},
				{'3', 3},
				{'4', 4},
				{'5', 5},
				{'6', 6},
				{'7', 7},
				{'8', 8},
				{'9', 9},
				{'T', 10},
				{'J', 11},
				{'Q', 12},
				{'K', 13},
				{'A', 14},
			};

		public string Execute()
		{
			var allHands = Problem054Input.Hands.Select(h => new PairOfHands
				{
					Player1Cards = CardListFromString(h[0]),
					Player2Cards = CardListFromString(h[1])
				});
			return allHands.Count(h => Score(h.Player1Cards).CompareTo(Score(h.Player2Cards)) > 0).ToString();
		}

		private static List<Card> CardListFromString(string handString)
		{
			return handString
				.Split(' ')
				.Select(s => new Card { Suit = s[1], Rank = _ranks[s[0]] })
				.OrderByDescending(c => c.Rank)
				.ToList();
		}

		private static string Score(IList<Card> hand)
		{
			var scoreBuilder = new StringBuilder();

			var isFlush = hand.Select(c => c.Suit).Distinct().Count() == 1;
			var isStraight = hand[0].Rank == hand[1].Rank + 1 &&
			                 hand[1].Rank == hand[2].Rank + 1 &&
			                 hand[2].Rank == hand[3].Rank + 1 &&
			                 hand[3].Rank == hand[4].Rank + 1;

			var counts = hand.GroupBy(h => h.Rank).ToDictionary(g => g.Key, g => g.Count());
			var quad = counts.Where(c => c.Value == 4).Select(c => c.Key).SingleOrDefault();
			var trio = counts.Where(c => c.Value == 3).Select(c => c.Key).SingleOrDefault();
			var pairs = counts.Where(c => c.Value == 2).Select(c => c.Key);

			if (isFlush && isStraight)
			{
				scoreBuilder.Append('8');
				scoreBuilder.Append(hand.Select(c => RankCode(c.Rank)).ToArray());
			}
			else if (quad > 0)
			{
				scoreBuilder.Append('7');
				scoreBuilder.Append(RankCode(quad), 4);
				scoreBuilder.Append(RankCode(hand.Single(c => c.Rank != quad).Rank));
			}
			else if (trio > 0 && pairs.Any())
			{
				scoreBuilder.Append('6');
				scoreBuilder.Append(RankCode(trio), 3);
				scoreBuilder.Append(RankCode(pairs.Single()), 2);
			}
			else if (isFlush)
			{
				scoreBuilder.Append('5');
				scoreBuilder.Append(hand.Select(c => RankCode(c.Rank)).ToArray());
			}
			else if (isStraight)
			{
				scoreBuilder.Append('4');
				scoreBuilder.Append(hand.Select(c => RankCode(c.Rank)).ToArray());
			}
			else if (trio > 0)
			{
				scoreBuilder.Append('3');
				scoreBuilder.Append(RankCode(trio), 3);
				hand.Where(c => c.Rank != trio).Select(c => scoreBuilder.Append(RankCode(c.Rank))).ToList();
			}
			else if (pairs.Any())
			{
				scoreBuilder.Append(pairs.Count());
				pairs.Select(r => scoreBuilder.Append(RankCode(r), 2)).ToList();
				hand.Where(c => !pairs.Contains(c.Rank)).Select(c => scoreBuilder.Append(RankCode(c.Rank))).ToList();
			}
			else
			{
				scoreBuilder.Append('0');
				scoreBuilder.Append(hand.Select(c => RankCode(c.Rank)).ToArray());
			}

			return scoreBuilder.ToString();
		}

		public static char RankCode(int rank)
		{
			return (char)(rank + '@');
		}

		private class Card
		{
			public char Suit;
			public int Rank;
			public override string ToString() { return string.Format("{0:00}{1}", Rank, Suit); }
		}

		private class PairOfHands
		{
			public List<Card> Player1Cards;
			public List<Card> Player2Cards;
		}
	}
}
