function attack(target,attackType){
	//if there is an enemy on the map
	if (target != noone){
		if(attackType == "basic"){
			//if within range
			if(distance_to_object(target) < BASIC_RANGE){
				with(instance_create_layer(x,y,"attackLayer",obj_basicAttack)){image_angle = angle}
			}
		}
	}
}