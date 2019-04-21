using Symphony_Sprint.Game_Model.World_Objects;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Symphony_Sprint.Game_Model
{
    public class GameController : ISerialize
    {
        public Level level;
        public Player player;
        public int points = 0;
        public int notes;
        public bool isGameOver = false;
        public bool isCheatEnabled = false;

        public string[] easyImages = { "wholeNote-1.png.png", "quarterNote-1.png.png", "eigthNote-1.png.png", "trebleClef-7.png.png", "flat-1.png.png", "sharp-1.png.png", "halfNote-1.png.png" };
        public string[] mediumImages = { "quarterNote-1.png.png", "eigthNote-1.png.png", "trebleClef-7.png.png", "halfNote-1.png.png", "flat-1.png.png", "flat-1.png.png", "sharp-1.png.png" };
        public string[] hardImages = { "quarterNote-1.png.png", "eigthNote-1.png.png", "trebleClef-7.png.png", "flat-1.png.png", "sharp-1.png.png", "flat-1.png.png", "sharp-1.png.png" };
        public string[] insaneImages = { "trebleClef-7.png.png", "flat-1.png.png", "flat-1.png.png", "flat-1.png.png", "sharp-1.png.png", "sharp-1.png.png", "sharp-1.png.png" };
        Random rand = new Random();

       

        public Level Level { get { return level; } set { level = value; } }
        public Player Player { get { return player; } set { player = value; } }
        public int Points { get { return points; } set { points = value; } }
        public int Notes { get { return notes; } set { notes = value; } }

        public GameController()
        {
            Player = new Player("Dr. Schaub.png");
            level = new Level();
        }

        public void Update()
        {

        }

        //Sets up Level One
        public void LargoLevel()
        {
            this.Level.levelName = "largo";
            //NoteObjective = 20
            CreateLevel();
        }

        public void AndanteLevel()
        {
            this.Level.levelName = "andante";
            //NoteObjective = 30
            CreateLevel();
        }

        public void AllegroLevel()
        {
            this.Level.levelName = "allegro";
            //NoteObjective = 40
            CreateLevel();
        }

        public void CreateLevel()
        {
            var usedPos = new List<int>();

            var positions = new HashSet<int>(); //HashSets cannot contain duplicate items.


            for (int i = 0; i < 50; i++)
            {
                //Sets our random numbers each time the loop goes through.
                int img = rand.Next(0, 7);
                int posX = rand.Next(1100, 15000);
                int posY = rand.Next(50, 250);


                //Protects against duplicate random positions.
                if (posX % 100 == 0)
                {
                    positions.Add(posX); //Hashsets cannot obtain the same value.
                }
                else
                {
                    int newposX = posX + 1000;
                    positions.Add(newposX);
                }

                var posList = positions.ToList(); //Change our hashset to a list so we can index it.

                DetermineDifficulty(img, posX, posY);
            }
        }

        public void DetermineDifficulty(int img, int posX, int posY)
        {
            switch (Level.Difficulty)
            {
                case Level.DifficultyEnum.EASY:
                    GameObject easyObj = new GameObject(easyImages[img], 3, posX, posY);
                    Level.GameObjects.Add(easyObj);
                    break;
                case Level.DifficultyEnum.MEDIUM:
                    GameObject mediumObj = new GameObject(mediumImages[img], 3, posX, posY);
                    Level.GameObjects.Add(mediumObj);
                    break;
                case Level.DifficultyEnum.HARD:
                    GameObject hardObj = new GameObject(hardImages[img], 3, posX, posY);
                    Level.GameObjects.Add(hardObj);
                    break;
                case Level.DifficultyEnum.INSANE:
                    GameObject insaneObj = new GameObject(insaneImages[img], 3, posX, posY);
                    Level.GameObjects.Add(insaneObj);
                    break;
            }
        }

        public void Save(string filename)
        {
            string serializedData = Serialize();
            File.WriteAllText(filename, serializedData);
        }

        public void Load(string filename)
        {
            string serializedData = File.ReadAllText(filename);
            this.Deserialize(serializedData);
        }

        public string Serialize()
        {
            return $"Points:{Points}\r\nNotes:{Notes}\r\nPlayer:{Player.Serialize()}\r\nLevel:{Level.Serialize()}";
        }

        public void Deserialize(string data)
        {
            data = data.Replace("\r", "");
            int levelIndex = data.IndexOf("\nLevel:");
            string levelSerialized = data.Substring(levelIndex + 7);
            Level = new Level();
            Level.Deserialize(levelSerialized);

            string restOfProperties = data.Substring(0, levelIndex);
            string[] lines = restOfProperties.Split('\n');
            foreach (string line in lines)
            {
                string[] lineParts = line.Split(':');
                string name = lineParts[0];
                string value = lineParts[1];

                switch (name)
                {
                    case "Points":
                        Points = int.Parse(value);
                        break;
                    case "Notes":
                        Notes = int.Parse(value);
                        break;
                    case "Player":
                        Player = new Player(null);
                        Player.Deserialize(value);
                        break;
                }
            }
        }
    }
}
