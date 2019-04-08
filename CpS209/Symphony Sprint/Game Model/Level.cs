using System;
using System.Collections.Generic;
using System.Linq;

namespace Symphony_Sprint.Game_Model
{
    public class Level : ISerialize
    {
        public enum DifficultyEnum { EASY, MEDIUM, HARD}
        public DifficultyEnum Difficulty { get; set; }
        public List<GameObject> gameObjs = new List<GameObject>();
        public int noteObjective;

        // Gets and sets the note objective for each level in order to proceed to the next level.
        public int NoteObjective { get { return noteObjective; } set { noteObjective = value; } }
        public List<GameObject> GameObjects { get { return gameObjs; } }

        public string Serialize()
        {
            string gameObjs = string.Join("\r\n", GameObjects.Select(go => go.Serialize()));
            return $"Difficulty={Difficulty},NoteObjective={NoteObjective}\r\nGameObjects:\r\n{gameObjs}";
        }

        public void Deserialize(string data)
        {
            // GameObjects are one per line, so handle that one differently than the rest of the properties
            int gameObjsIndex = data.IndexOf("\nGameObjects:");
            string gameObjsSerialized = data.Substring(gameObjsIndex + 14);
            gameObjs = new List<GameObject>();
            foreach (var line in gameObjsSerialized.Split('\n'))
            {
                var gameObj = new GameObject("", 0, 0, 0);
                gameObj.Deserialize(line);
                gameObjs.Add(gameObj);
            }

            // Handle the rest of the properties
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
                }
            }
        }
    }
}