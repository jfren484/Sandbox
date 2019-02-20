using NUnit.Framework;

namespace Battleship
{
    [TestFixture]
    class TestingClass
    {
        [Test]
        public void TestShipPlacement_VerifyCorrectNumberOfShips_SuccessfulOutcome()
        {
            Game.Size = 5;
            for (int i = 0; i < 1000; i++)
            {
                OceanGrid aiGrid = new OceanGrid(5);

                aiGrid.PlaceShips();

                Assert.AreEqual(aiGrid.NumOfShips, aiGrid.ShipsPlaced, "Number of ships did not match for iteration {0} ({1} vs {2})", i, aiGrid.NumOfShips, aiGrid.ShipsPlaced);
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
