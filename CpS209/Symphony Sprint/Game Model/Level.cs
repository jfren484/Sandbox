using Symphony_Sprint.Game_Model.World_Objects;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Symphony_Sprint.Game_Model
{
    public class Level : ISerialize
    {
        public enum DifficultyEnum { EASY, MEDIUM, HARD, INSANE}
        public static DifficultyEnum Difficulty { get; set; }
        public List<GameObject> gameObjs = new List<GameObject>();
        public int noteObjective;

        //public int seconds = 0;
        //int min = 0;

        public string levelName = "largo";
        // Gets and sets the note objective for each level in order to proceed to the next level.

        public int Seconds { get; set; }
        public int Min { get; set; }
        public int NoteObjective { get { return noteObjective; } set { noteObjective = value; } }
        public List<GameObject> GameObjects { get { return gameObjs; } }

        public string Serialize()
        {
            string gameObjs = string.Join("\r\n", GameObjects.Select(go => go.Serialize()));
            return $"Difficulty={Difficulty},Minutes={Min},Seconds={Seconds},NoteObjective={NoteObjective}\r\nGameObjects:\r\n{gameObjs}";
        }

        public void Deserialize(string data)
        {
            int gameObjsIndex = data.IndexOf("\nGameObjects:");
            string gameObjsSerialized = data.Substring(gameObjsIndex + 14);
            gameObjs = new List<GameObject>();
            foreach (var line in gameObjsSerialized.Split('\n'))
            {
                var gameObj = new GameObject("", 0, 0, 0);
                gameObj.Deserialize(line);
                gameObjs.Add(gameObj);
            }

            string otherProperties = data.Substring(0, gameObjsIndex);
            string[] properties = otherProperties.Split(',');
            foreach (string property in properties)
            {
                string[] propertyParts = property.Split('=');
                string name = propertyParts[0];
                string value = propertyParts[1];

                switch (name)
                {
                    case "Difficulty":
                        Difficulty = (DifficultyEnum)Enum.Parse(typeof(DifficultyEnum), value);
                        break;
                    case "NoteObjective":
                        NoteObjective = int.Parse(value);
                        break;
                    case "Minutes":
                        Min = int.Parse(value);
                        break;
                    case "Seconds":
                        Seconds = int.Parse(value);
                        break;
                }
            }
        }
    }
}