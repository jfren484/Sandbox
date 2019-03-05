using NUnit.Framework;
using Moq;

namespace Battleship
{
    [TestFixture]
    class TestingClass
    {
        [Test]
        public void TestShipPlacement_VerifyCorrectNumberOfShips_SuccessfulOutcome()
        {
            var mockObserver = new Mock<IObserver>(); // My dad also helped me use Moq to implement a mock IObserver into the Game class

            Game game = new Game(true, 9, mockObserver.Object);
            for (int i = 0; i < 1000; i++)
            {
                game.AiGrid.AutoPlaceShips();

                int number = 0;
                for (int x = 0; x < game.Size; x++)
                {
                    for (int y = 0; y < game.Size; y++)
                    {
                        if (game.AiGrid.BoardState[x, y].Type == OceanSpaceType.Ship)
                        {
                            number++;
                        }
                    }
                }
                Assert.IsTrue(number == game.AiGrid.NumOfShips);
            }
        }
    }
}
