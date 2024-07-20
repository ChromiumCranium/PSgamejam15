/*define crafting list:
array of items (each with their own array of attributes)
item attributes: 
	speed(int)
	strength(int)
	health(int)
	
*/
global.craftList = array_create(CRAFT_LIMIT - 1,-1);
var beingUsed;

if(mouse_check_button_pressed(2) == 1){
	//if mouse is on hotbar
	if(window_get_height() > mouse_y > window_get_height()-INVENTORY_HEIGHT && (window_get_width() - global.hotbarXBuffer) > mouse_x > global.hotbarXBuffer){
		//Define which inventory slot is hovered over
		var invSlot = (window_get_width() - global.hotbarXBuffer) div INVENTORY_WIDTH;
		//add item selected to craft list if there are <3 already selected and the item is craftable
		if(global.inventory[invSlot][3] == 0){
		for (var i = 0; i < CRAFT_LIMIT - 1; i++){
			if (global.craftList[i] == -1){
				//activate crafting mode
				global.isCrafting = 1;
				global.craftList[i] = global.inventory[i];
				beingUsed = 1;
				break;
			};
		};};	
	};
};
if (global.isCrafting == 1 && beingUsed == 1){
	var invSlot = (window_get_width() - global.hotbarXBuffer) div INVENTORY_WIDTH
	//Create indication on hotbar of which slot is selected for crafting
	draw_sprite(
		spr_inventoryCraft,
		0,
		global.hotbarXBuffer + INVENTORY_WIDTH*invSlot,
		window_get_height() + INVENTORY_HEIGHT
	);
}

//If 'c' key is pressed, execute craft:
//Delete old items from inventory
//Create new item by adding stats
//Add new item to inventory
//reset craft list
//turn off isCrafting and destroy inventoryCraft Sprites
if(keyboard_check_pressed(ord("C"))){
	//Delete old items from inventory
	for (var j=0;j<CRAFT_LIMIT-1;j++){
		for (var i=0;i<INVENTORY_SLOTS-1;i++){
			if(global.inventory[i] = global.craftList[j]){
				global.inventory[i] = -1
			}
		}
	}
	
	//Create new item by adding stats + Add to inventory
	for (var i=0;i<INVENTORY_SLOTS-1;i++){
		//if this slot is empty
		if (global.inventory[i] == -1){
			//create new item at end of item array
			for (var j=0;j<CRAFT_LIMIT-1;j++){
				array_push(global.items,[global.craftList[j][0],global.craftList[j][1],global.craftList[j][2],0])
			} 
			//add to inventory
			global.inventory[i] = array_last(global.items)
			break;
		}
	}
	
	//reset craft list
	for (var j=0;j<CRAFT_LIMIT-1;j++){
		global.craftList[j] = -1
	}
	
	//turn off isCrafting and destroy inventoryCraft Sprites
	global.isCrafting = 0
	layer_sprite_destroy(spr_inventoryCraft)
}