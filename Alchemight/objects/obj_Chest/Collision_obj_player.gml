/// @description Add items to inventory
var i = 0;
for (i = 0; i<array_length(items); i = i){
	
	var success = AddItem(items[i])
	
	//if successfully added (i.e. inventory had room), then delete i from items in chest
	if (success == 1) {
		
		//this will move the rest of the items over so that the next one to check is in the same index
		//therefore there's no need to increment upwards with i unless the addition fails, but then we
		//should break anyway
		array_delete(items, i, 1)
	} 
	
	
	else break
}

//if no items left in chest, then destroy chest
if (array_length(items) == 0) instance_destroy(self)