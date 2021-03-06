global.manaTypes = 4;
enum manaType {green = 0, blue = 1, purple = 2, red = 3};
global.ManaColor[manaType.green] = $92b933;
global.ManaColor[manaType.blue]  = $dc7542;
global.ManaColor[manaType.purple]= $c73d8e;
global.ManaColor[manaType.red]   = $3737f5;
global.scatterActive = 0; //for when a scatter symbol is placed. 0 = not active, 1 = active, 2 = active and the slot machine has moved at least once.

global.actionActive = false;

// PLAYER HUD //
global.numSpellButtons = 4; // the number of spells a character can cast
global.numManaBars = global.manaTypes; // the amount of mana bars on the player hud

// TURNS & ACTIONS //
global.turn = 1;
global.actionsPerTurn = 3;
actionsRemaining = global.actionsPerTurn

global.actionsEnabled = true;

enum class {warrior, wizard, thief, acolyte};
enum spell {swordstrike, bash, shield, shatter, zap, heal, fireball, freeze, manabomb, smoke_bomb};
enum animstate {idle, damaged, healed, won, lost, attack, utility};

global.mana_gain[0] = 1;
global.mana_gain[1] = 1;
global.mana_gain[2] = 2;
global.mana_gain[3] = 4;
global.mana_gain[4] = 8;

global.delta = 1;

// TURN SYMBOLS //
// TODO: instanciate the symbols somewhere else, store a reference to them here in an array
for(var i = 0; i < global.actionsPerTurn; i++)
{
    // actionCoin[i] = instance reference?;
}
