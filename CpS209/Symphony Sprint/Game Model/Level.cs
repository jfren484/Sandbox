using Symphony_Sprint.Game_Model.World_Objects;
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
            var gameObjs = GameObjects.Select(go => go.Serialize());
            return $"Difficulty={Difficulty},NoteObjective={NoteObjective}\r\nGameObjects:\r\n{gameObjs}";
        }

        public void Deserialize(string data)
        {
            throw new System.NotImplementedException();
        }
    }
}