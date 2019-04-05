

using Symphony_Sprint.Game_Model.World_Objects;
using System.Collections.Generic;

namespace Symphony_Sprint.Game_Model
{
    public class Level : ISerialize
    {
        public enum Difficulty { EASY, MEDIUM, HARD}
        public List<GameObject> gameObjs = new List<GameObject>();
        public int noteObjective;

        //Gets and sets the note objective for each level in order to proceed to the next level.
        public int NoteObjective { get { return noteObjective; } set { noteObjective = value; } }
        public List<GameObject> GameObjects { get { return gameObjs; } }

        public string Serialize()
        {
            throw new System.NotImplementedException();
        }

        public void Deserialize(string data)
        {
            throw new System.NotImplementedException();
        }
    }
}