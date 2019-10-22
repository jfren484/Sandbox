using System.Collections.Generic;
using System.Linq;

namespace Lab6
{
    public class Stack<T>
    {
        private List<T> _vals = new List<T>();

        public bool Empty()
        {
            return !_vals.Any();
        }

        public void Push(T value)
        {
            _vals.Add(value);
        }

        public T Pop()
        {
            T value = _vals.Last();
            _vals.RemoveAt(_vals.Count - 1);
            return value;
        }

        public T Top()
        {
            return _vals.Last();
        }
    }
}
