using NUnit.Framework;

namespace Battleship
{
    [TestFixture]
    class TestingClass
    {
        [Test]
        public void TestShipPlacement_VerifyCorrectNumberOfShips_SuccessfulOutcome()
        {
            Game game = new Game(null, true, 9);
            for (int i = 0; i < 1000; i++)
            {
                game.AiGrid.AutoPlaceShips();

                int number = 0;
                for (int x = 0; x < game.Size; x++)
                {
                    for (int y = 0; y < game.Size; y++)
                    {
                        if (game.AiGrid.BoardState[x, y].OceanSpaceType == OceanSpaceType.Ship)
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
            var arr = new OceanSpaceType[size, size];

            for (var x = 0; x < size; x++)
            {
                for (var y = 0; y < size; y++)
                {
                    Assert.AreEqual(OceanSpaceType.Empty, arr[x, y]);
                }
            }
        }
    }
}
