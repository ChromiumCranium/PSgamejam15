//define item drop array as an array of indices of items in global.items to be passed to chest instance
rand = -1

function Kill(instance) {
	
	//only do drops if not a friendly
	if (object_get_parent(object_index) == obj_enemyParent){
		
		var items = array_create(0)
		
		//only calculate all this if lvl >=1
		if (instance.lvl >= 1){
			//determine drops based off level of dying instance
			switch (instance.lvl) {
				case 1 :
					for (i = 0; i < ITEM_DROP_COUNT; i++){
				
						//randomly choose item index within level range provided
						rand = irandom_range(0,LV1_ITEM_CUTOFF_INDEX)
						array_push(items,rand)
				
					}
					break;
				case 2 :
					for (i = 0; i < ITEM_DROP_COUNT; i++){
				
						//randomly choose item index within level range provided
						rand = irandom_range(LV1_ITEM_CUTOFF_INDEX+1,LV2_ITEM_CUTOFF_INDEX)
						array_push(items,rand)
					}
					break;
			}
	
			items1 = {
				drops : items
			}
			show_debug_message(items1)
	
			//create new chest with the items inside
			instance_create_layer(x,y,"entityLayer",obj_chest,items1)
		}
	}
	//now destroy the dying instance
	instance_destroy(instance)
}