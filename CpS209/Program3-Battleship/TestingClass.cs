using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace Battleship
{
    [TestFixture]
    class TestingClass
    {
        [Test]
        public void TestShipPlacement_VerifyCorrectNumberOfShips_SuccessfulOutcome()
        {
            for (int i = 0; i < 1000; i++)
            {
                OceanGrid aiGrid = new OceanGrid(5);

                aiGrid.PlaceShips();

                int number = 0;
                for (int x = 0; x < aiGrid.NumOfShips; x++)
                {
                    for (int y = 0; y < 5; y++)
                    {
                        if (aiGrid.BoardState[x, y] == OceanGrid.WaterSpace.Ship)
                        {
                            number++;
                        }
                    }
                }
                Assert.IsTrue(number == aiGrid.NumOfShips);
            }
        }

        [Test]
        public void NewArrayIsEmpty()
        {
            const int size = 5;
            var arr = new OceanGrid.WaterSpace[size, size];

            for (var x = 0; x < size; x++)
            {
                for (var y = 0; y < size; y++)
                {
                    Assert.AreEqual(OceanGrid.WaterSpace.Empty, arr[x, y]);
                }
            }
        }
    }
}
