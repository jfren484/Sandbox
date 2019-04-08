using Symphony_Sprint.Game_Model.World_Objects;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint.Game_Model
{
    public class GameController : ISerialize
    {

        public Level level;
        public Player player;
        public int points;
        public int notes;
        public bool isGameOver = false;

        public string[] images = { "wholeNote.gif", "quarterNote.gif", "eigthNote.gif", "trebleClef.gif", "flat.gif", "sharp.gif", "halfNote.gif" };

        Random rand = new Random();

        private static GameController instance = new GameController();

        public static GameController Instance
        {
            get
            {
                return instance;
            }
        }

        public Level Level { get { return level; } set { level = value; } }
        public Player Player { get { return player; } set { player = value; } }
        public int Points { get { return points; } set { points = value; } }
        public int Notes { get { return notes; } set { notes = value; } }

        public GameController()
        {
            Player = new Player("robin.png");
            level = new Level();
        }

        public void Update()
        {

        }

        //Sets up Level One
        public void LargoLevel()
        {
            var usedPos = new List<int>();

            var positions = new HashSet<int>();

            for (int i = 0; i < 50; i++)
            {
                int img = rand.Next(0, 6);
                int posX = rand.Next(1200, 15000);
                int posY = rand.Next(150, 250);

                //Protects against duplicate random numbers.
                positions.Add(posX);
                var posList = positions.ToList();
                posX = posList[i];

                GameObject obj = new GameObject(images[img], 20, posX, posY);
                Level.GameObjects.Add(obj);
            }

            
        }

        public void Save(string filename)
        {
            string serializedData = Serialize();
            File.WriteAllText(filename, serializedData);
        }

        public GameController Load(string filename)
        {
            string serializedData = File.ReadAllText(filename);
            var game = new GameController();
            game.Deserialize(serializedData);
            return game;
        }

        public string Serialize()
        {
            return $"Points:{Points}\r\nNotes:{Notes}\r\nPlayer:{Player.Serialize()}\r\nLevel:{Level.Serialize()}";
        }

        public void Deserialize(string data)
        {
            throw new NotImplementedException();
        }
    }
}
