global.manaTypes = 4;
enum manaType {yellow = 0, green = 1, red = 2, blue = 3};
global.ManaColor[manaType.yellow] = c_yellow;
global.ManaColor[manaType.green] = c_green;
global.ManaColor[manaType.red] = c_red;
global.ManaColor[manaType.blue] = c_blue;
global.numManaBars = global.manaTypes;
global.scatterActive = 0; //for when a scatter symbol is placed. 0 = not active, 1 = active, 2 = active and the slot machine has moved at least once.

global.numSpellButtons = 3; // the number of spells a character can cast

global.turn = 1;
global.actionsPerTurn = 3;
global.actionsRemaining = global.actionsPerTurn;

enum class {warrior, wizard, thief, acolyte};
global.playerClass = class.acolyte // the class the player chooses.

enum spell {bash, zap, manabomb, shatter, heal};
