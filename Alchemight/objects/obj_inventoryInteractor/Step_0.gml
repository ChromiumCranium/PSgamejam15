/*define crafting list:
array of items (each with their own array of attributes)
item attributes: 
	speed(int)
	strength(int)
	health(int)
	
*/
var beingUsed;

if(mouse_check_button_pressed(2) == 1){
	if(hotbarSlot() != -1){
		show_debug_message("M2 CLICK IN HOTBAR SLOT: ")
		show_debug_message(hotbarSlot())
		//add item selected to craft list if there are <3 already selected and the item is craftable and the slot selecting isn't beign used yet
		if(global.items[global.inventory[hotbarSlot()]][3] == 0 && hotbarSlot() != global.slotCrafting1 && hotbarSlot() != global.slotCrafting2 && hotbarSlot() != global.slotCrafting3){
		for (var i = 0; i <= CRAFT_LIMIT - 1; i++){
			if (global.craftList[i] == -1){
				show_debug_message("ADDING TO CRAFTER")
				//activate crafting mode
				if(global.slotCrafting1 == -1){global.slotCrafting1 = hotbarSlot();}
				else if(global.slotCrafting2 == -1){global.slotCrafting2 = hotbarSlot();}
				else if(global.slotCrafting3 == -1){global.slotCrafting3 = hotbarSlot();}
				global.craftList[i] = global.inventory[hotbarSlot()];
				break;
			};
		};};	
	};
};


//If 'c' key is pressed, execute craft:
//Delete old items from inventory
//Create new item by adding stats
//Add new item to inventory
//reset craft list
//turn off isCrafting and destroy inventoryCraft Sprites
if(keyboard_check_pressed(ord("C")) && global.craftList[0] != -1 && global.craftList[1] != -1){
	show_debug_message(global.craftList)
	
	//Delete old items from inventory
	for (var j=0;j<=CRAFT_LIMIT-1;j++){
		RemoveItem(global.craftList[j])
	}
	
	//Create new item by adding stats + Add to inventory
	AddItem(CreateNewItem(global.craftList[0],global.craftList[1],global.craftList[2]))

	//reset craft list
	for (var j=0;j<=CRAFT_LIMIT-1;j++){
		global.craftList[j] = -1
	}
	
	//turn off isCrafting and destroy inventoryCraft Sprites
	global.slotCrafting1 = -1
	global.slotCrafting2 = -1
	global.slotCrafting3 = -1
}

//if 'v' pressed, clear craft slots and craft list
if(keyboard_check_pressed(ord("V"))){
	global.slotCrafting1 = -1
	global.slotCrafting2 = -1
	global.slotCrafting3 = -1
	for (var i=0;i<CRAFT_LIMIT;i++){
		global.craftList[i] = -1
	}
}