function InventorySearch(itemType){
	for (var i = 0; i < INVENTORY_SLOTS; i++){
		if(global.inventory[i] == itemType){
			return(i)
		}
	}
	return(-1)
}

function AddItem(itemType){
	var slot = InventorySearch(-1)
	if (slot != -1){
		global.inventory[slot] = itemType
		return (1)
	} else {
		return(0)
	}
}

function RemoveItem(itemType){
	var slot = InventorySearch(itemType)
	if (slot != -1){
		global.inventory[slot] = -1
		return (1)
	} else {
		return(0)
	}
}

//Add item to end of item array and return new item index
function CreateNewItem(item1,item2,item3){
	//init vars
	var sprite
	
	//item stats
	var property0=0
	var property1=0
	var property2=0
	if (item3 == -1){
		property0 = global.items[item1][0] * global.items[item2][0]
		property1 = global.items[item1][1] * global.items[item2][1]
		property2 = global.items[item1][2] * global.items[item2][2]
	} else {
		property0 = global.items[item1][0] * global.items[item2][0] * global.items[item3][0]
		property1 = global.items[item1][1] * global.items[item2][1] * global.items[item3][1]
		property2 = global.items[item1][2] * global.items[item2][2] * global.items[item3][2]
	}
	
	//randomized useable sprite
	switch (irandom_range(1,sprite_get_number(spr_potion))) {
		case 1 :
			sprite = spr_potion1
			break;
			
		case 2 :
			sprite = spr_potion2
			break;
			
		case 3 :
			sprite = spr_potion3
			break;
			
		case 4 :
			sprite = spr_potion4
			break;
			
	}
	
	var newitem = [property0,property1,property2,0,sprite]
	
	array_push(global.items,newitem)
	return(array_length(global.items)-1)
}

