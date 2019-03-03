using System;
using System.Collections.Generic;

namespace Battleship
{
    public class WaterSpaceView
    {
        private readonly Func<WaterSpace> _getter;
        private readonly bool _showUnHitShips;

        public WaterSpaceView(Func<WaterSpace> getter, int x, int y, bool isAiGrid, bool showUnHitShips)
        {
            _getter = getter;
            _showUnHitShips = showUnHitShips;

            X = x;
            Y = y;
            IsAiGrid = isAiGrid;
        }

        public WaterSpace WaterSpace
        {
            get
            {
                var tempSpace = _getter();
                if (!_showUnHitShips && tempSpace == WaterSpace.Ship)
                {
                    tempSpace = WaterSpace.Empty;
                }
                return tempSpace;
            }
        }

        public int X { get; set; }
        public int Y { get; set; }

        public bool IsAiGrid { get; set; }

        public string ImageSource => $"Images/{WaterSpace}.png";

        /// <summary>
        /// Helper for creating a bindable List of Lists from a 2D array
        /// </summary>
        /// <param name="array"></param>
        /// <returns></returns>
        public static List<List<WaterSpaceView>> GetBindable2DArray(WaterSpace[,] array, bool isAiGrid, bool showUnHitShips)
        {
            List<List<WaterSpaceView>> listOfLists = new List<List<WaterSpaceView>>();

            for (int x = 0; x < array.GetLength(0); x++)
            {
                List<WaterSpaceView> list = new List<WaterSpaceView>();

                for (int y = 0; y < array.GetLength(1); y++)
                {
                    // Copy x and y to avoid closure
                    int x1 = x;
                    int y1 = y;
                    WaterSpaceView view = new WaterSpaceView(() => array[x1, y1], x1, y1, isAiGrid, showUnHitShips);

                    list.Add(view);
                }

                listOfLists.Add(list);
            }

            return listOfLists;
        }
    }
}
