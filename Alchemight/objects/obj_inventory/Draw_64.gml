display_set_gui_size(window_get_width(),window_get_height())

global.hotbarXBuffer = ((window_get_width() - INVENTORY_SLOTS*INVENTORY_WIDTH)/2)

//Draw hotbar centered at bottom of screen
for (var i = 0; i <= INVENTORY_SLOTS-1; i++){
	draw_sprite(
		spr_inventorySlot,
		0,
		global.hotbarXBuffer + INVENTORY_WIDTH*i,
		window_get_height() - INVENTORY_HEIGHT
	);
};

//Draw items inside hotbar
for (var j = 0; j <= INVENTORY_SLOTS-1; j++){
	if(global.inventory[j] != -1){
	draw_sprite(
		spr_item,
		
		global.inventory[j],
		global.hotbarXBuffer+INVENTORY_WIDTH*j,
		window_get_height() - INVENTORY_HEIGHT
	)
	}
}

if (global.slotCrafting1 != -1){
	//Create indication on hotbar of which slot is selected for crafting
	draw_sprite(
		spr_inventoryCraft,
		0,
		global.hotbarXBuffer + INVENTORY_WIDTH*global.slotCrafting1,
		window_get_height() - INVENTORY_HEIGHT
	);
}
if (global.slotCrafting2 != -1){
	//Create indication on hotbar of which slot is selected for crafting
	draw_sprite(
		spr_inventoryCraft,
		0,
		global.hotbarXBuffer + INVENTORY_WIDTH*global.slotCrafting2,
		window_get_height() - INVENTORY_HEIGHT
	);
}
if (global.slotCrafting3 != -1){
	//Create indication on hotbar of which slot is selected for crafting
	draw_sprite(
		spr_inventoryCraft,
		0,
		global.hotbarXBuffer + INVENTORY_WIDTH*global.slotCrafting3,
		window_get_height() - INVENTORY_HEIGHT
	);
}

if (mouseCheck() == "hotbar"){
if (global.inventory[hotbarSlot()] != -1){
	var strength = string(global.items[global.inventory[hotbarSlot()]][0])
	var aspeed = string(global.items[global.inventory[hotbarSlot()]][1])
	var ahealth = string(global.items[global.inventory[hotbarSlot()]][2])
	var tooltiptext = "STRENGTH: " + strength + "SPEED: " + aspeed + "HEALTH: " + ahealth
	//"SPEED: " + global.inventory[hotbarSlot()][1] + 
	//"HEALTH: " + global.inventory[hotbarSlot()][2])
	draw_tooltip(tooltiptext, fnt_vinque, c_white, c_black, 0.8);
}
}