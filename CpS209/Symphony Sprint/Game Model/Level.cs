

using Symphony_Sprint.Game_Model.World_Objects;
using System.Collections.Generic;

namespace Symphony_Sprint.Game_Model
{
    public class Level
    {
        public enum Difficulty { EASY, MEDIUM, HARD}
        public List<GameObject> gameObjs = new List<GameObject>();
        public int noteObjective;

        //Gets and sets the note objective for each level in order to proceed to the next level.
        public int NoteObjective { get { return noteObjective; } set { noteObjective = value; } }

        
    }
}