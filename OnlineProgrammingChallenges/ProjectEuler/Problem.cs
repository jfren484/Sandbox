using ProjectEuler.Solvers;

namespace ProjectEuler
{
	public class Problem
	{
		public string ClassName { get; private set; }
		public string Description { get; private set; }
		public string Id { get; private set; }

		public Problem(string className, string description)
		{
			ClassName = className;
			Description = description;

			var start = typeof (IProblemSolver).Namespace.Length + "Problem".Length + 1;
			Id = ClassName.Substring(start, ClassName.LastIndexOf("Solver") - start);
		}

		public override string ToString()
		{
			return string.Format("Id: {0} - {1}", Id, Description);
		}
	}
}
