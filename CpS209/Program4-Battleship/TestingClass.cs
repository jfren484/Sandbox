using NUnit.Framework;

namespace Battleship
{
    [TestFixture]
    class TestingClass
    {
        [Test]
        public void TestShipPlacement_VerifyCorrectNumberOfShips_SuccessfulOutcome()
        {
            Game game = new Game(true, 9);
            for (int i = 0; i < 1000; i++)
            {
                game.AiGrid.AutoPlaceShips();

                int number = 0;
                for (int x = 0; x < game.Size; x++)
                {
                    for (int y = 0; y < game.Size; y++)
                    {
                        if (game.AiGrid.BoardState[x, y] == OceanGrid.WaterSpace.Ship)
                        {
                            number++;
                        }
                    }
                }
                Assert.IsTrue(number == game.AiGrid.NumOfShips);
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
