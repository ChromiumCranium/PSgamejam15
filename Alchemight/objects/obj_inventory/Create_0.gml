//Create Inventory array
global.inventory = array_create(INVENTORY_SLOTS, -1);
global.slotCrafting1 = -1;
global.slotCrafting2 = -1;
global.slotCrafting3 = -1;
global.craftList = array_create(CRAFT_LIMIT,-1);

//test values
global.inventory[0] = 0
global.inventory[3] = 0
global.inventory[5] = 1
global.inventory[9] = 0

//tooltip
var showToolTip = 0