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
            Player = new Player("/Graphics/stone.png");
            level = new Level();
        }

        public void Update()
        {

        }

        public void Largo()
        {
            GameObject wholeNote = new GameObject("wholeNote.gif", 20, 800, 5);

            Level.GameObjects.Add(wholeNote);
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
            return $"Points:{Points}|Notes:{Notes}|Player:{Player.Serialize()}|Level:{Level.Serialize()}";
        }

        public void Deserialize(string data)
        {
            throw new NotImplementedException();
        }
    }
}
