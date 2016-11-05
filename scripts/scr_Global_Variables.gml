global.manaTypes = 4;
enum manaType {green = 0, blue = 1, purple = 2, red = 3};
global.ManaColor[manaType.green] = $92b933;
global.ManaColor[manaType.blue]  = $dc7542;
global.ManaColor[manaType.purple]= $c73d8e;
global.ManaColor[manaType.red]   = $3737f5;
global.scatterActive = 0; //for when a scatter symbol is placed. 0 = not active, 1 = active, 2 = active and the slot machine has moved at least once.

global.numSpellButtons = 4; // the number of spells a character can cast
global.numManaBars = global.manaTypes;

global.turn = 1;
global.actionsPerTurn = 3;
actionsRemaining = global.actionsPerTurn

global.actionsEnabled = true;

enum class {warrior, wizard, thief, acolyte};
global.playerClass = class.acolyte // the class the player chooses. Starts as acolyte as default

enum spell {swordstrike, bash, shield, shatter, zap, heal, fireball, freeze, manabomb, smoke_bomb};

global.mana_gain[0] = 1;
global.mana_gain[1] = 2;
global.mana_gain[2] = 4;
global.mana_gain[3] = 8;
global.mana_gain[4] = 16;

