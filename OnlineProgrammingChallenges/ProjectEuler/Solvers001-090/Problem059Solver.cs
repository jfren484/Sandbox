using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("Using a brute force attack, can you decrypt the cipher using XOR encryption?")]
	public class Problem059Solver : IProblemSolver
	{
		public string Execute()
		{
			return FastMethod();
		}

		#region Prettier

		public string ElegantMethod()
		{
			var maxWordLength = Problem042Input.Words.Max(w => w.Length);

			var letters = Enumerable.Range('a', 26).Select(i => (char)i);

			var answer = from c1 in letters
						 from c2 in letters
						 from c3 in letters
						 let key = string.Concat(c1, c2, c3)
						 let decChars = Problem059Input.Bytes.Select((b, i) => (char)(b ^ key[i % 3])).ToArray()
						 where new string(decChars).Split(' ').All(s => s.Length <= maxWordLength)
						 select string.Format("Key: {0}, Sum: {1}", key, decChars.Sum(c => (int)c));

			return answer.Single();
		}

		#endregion

		#region Faster

		public string FastMethod()
		{
			var maxWordLength = Problem042Input.Words.Max(w => w.Length);

			var letters = Enumerable.Range('a', 26).Select(i => (char)i);

			var answer = from c1 in letters
			             from c2 in letters
			             from c3 in letters
			             let key = string.Concat(c1, c2, c3)
						 let decChars = Decrypt(Problem059Input.Bytes, key)
						 where new string(decChars).Split(' ').All(s => s.Length <= maxWordLength)
						 select string.Format("Key: {0}, Sum: {1}", key, decChars.Sum(c => (int)c));

			return answer.Single();
		}

		private static char[] Decrypt(IList<byte> encryptedBytes, string key)
		{
			var decryptedChars = new char[encryptedBytes.Count];

			for (var i = 0; i < encryptedBytes.Count; i++)
				decryptedChars[i] = (char)(encryptedBytes[i] ^ key[i % 3]);

			return decryptedChars;
		}

		#endregion
	}
}
