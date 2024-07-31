//define item drop array as an array of indices of items in global.items to be passed to chest instance
rand = -1
items1 = {
	drops : items
}


function Kill(instance) {
	
	inst = object
	
	//determine drops based off rarity of dying instance
	switch (instance.rarity) {
		case 1 :
			for (i = 0; i < ITEM_DROP_COUNT; i++){
				
				var items = array_create(0)
				
				//randomly choose item index within level range provided
				rand = random_range(0,LV1_ITEM_CUTOFF_INDEX)
				array_push(items,rand)
				
			}
			break;
		case 2 :
			for (i = 0; i < ITEM_DROP_COUNT; i++){
				
				var items = array_create(0)
				
				//randomly choose item index within level range provided
				rand = random_range(LV1_ITEM_CUTOFF_INDEX+1,LV2_ITEM_CUTOFF_INDEX)
				array_push(items,rand)
			}
			break;
	}
	
	//create new chest with the items inside
	instance_create_layer(x,y,"entityLayer",obj_chest,items1)
	
	//now destroy the dying instance
	instance_destroy(instance)
}