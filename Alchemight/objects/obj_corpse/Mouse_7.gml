///@description Turn into special minion

//if there is an item in hand
if (global.hand != -1){
	//take item's stats and put into a struct
	stats = {
		strengthMod : global.items[global.hand][0],
		speedMod : global.items[global.hand][1],
		healthMod : global.items[global.hand][2]
	}
	//create new special minion, pass stats
	instance_create_layer(x,y,"entityLayer",obj_specialMinion,stats)
	
	//destroy item from inventory
	RemoveItem(global.hand)
	
	//destroy corpse
	instance_destroy(self)
}