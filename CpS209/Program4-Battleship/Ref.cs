using System;
using System.Collections.Generic;

namespace Battleship
{
    /// <summary>
    /// Ref class by Eric Lippert from this thread:
    /// https://stackoverflow.com/questions/2980463/how-do-i-assign-by-reference-to-a-class-field-in-c/2982037#2982037
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class Ref<T>
    {
        private readonly Func<T> getter;
        private readonly Action<T> setter;

        public Ref(Func<T> getter, Action<T> setter)
        {
            this.getter = getter;
            this.setter = setter;
        }

        public T Value { get { return getter(); } set { setter(value); } }

        public override string ToString()
        {
            return getter().ToString();
        }
    }

    /// <summary>
    /// Helper for creating a bindable List of Lists from a 2D array
    /// Modified from example given here:
    /// https://stackoverflow.com/questions/276808/how-to-populate-a-wpf-grid-based-on-a-2-dimensional-array
    /// </summary>
    public static class Ref
    {
        /// <summary>
        /// Create List of Lists of 2D array
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="array"></param>
        /// <returns></returns>
        public static List<List<Ref<T>>> GetBindable2DArray<T>(this T[,] array)
        {
            List<List<Ref<T>>> listOfLists = new List<List<Ref<T>>>();

            for (int x = 0; x < array.GetLength(0); x++)
            {
                List<Ref<T>> list = new List<Ref<T>>();

                for (int y = 0; y < array.GetLength(1); y++)
                {
                    // Copy x and y to avoid closure
                    int x1 = x;
                    int y1 = y;
                    Ref<T> refT = new Ref<T>(() => array[x1, y1], val => { array[x1, y1] = val; });

                    list.Add(refT);
                }

                listOfLists.Add(list);
            }

            return listOfLists;
        }
    }
}
