global.hotbarXBuffer = ((window_get_width() - INVENTORY_SLOTS*INVENTORY_WIDTH)/2)
//SOMETHING IS VERY WRONG WITH THE POSITIONING

//Draw hotbar centered at bottom of screen
for (var i = 0; i < INVENTORY_SLOTS-1; i++){
	draw_sprite(
		spr_inventorySlot,
		0,
		global.hotbarXBuffer + INVENTORY_WIDTH*i,
		window_get_height() - INVENTORY_HEIGHT
	);
};
//THE SPRITES ARE DRAWING WHEN THEY SHOULDN'T BE AND IN SUPER WIERD PLACES???????
//Draw items inside hotbar
for (var j = 0; j < INVENTORY_SLOTS-1; j++){
	draw_sprite(spr_item,global.inventory[j],global.hotbarXBuffer*j,window_get_height() + INVENTORY_HEIGHT)
}

