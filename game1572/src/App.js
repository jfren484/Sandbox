import { Client } from 'boardgame.io/react';
import { Game1572 } from './Game';
import { Game1572Board } from './components/Board';

const App = Client({
    game: Game1572,
    numPlayers: 1,
    board: Game1572Board,
});

export default App;