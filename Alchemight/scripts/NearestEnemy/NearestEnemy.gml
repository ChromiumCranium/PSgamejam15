function findNearestEnemy(entity){
	return(instance_nearest(entity.x,entity.y,obj_enemyParent))
}

function attack(attacker,target,attackType){
	//if there is an enemy on the map
	if (target != noone){
		if(attackType == "BASIC"){
			//if within range
			if(distance_to_object(target) < BASIC_RANGE){
				with(instance_create_layer(x,y,"attackLayer",obj_basicAttack)){
					localTarget = target
					image_alpha = 0.7
					image_xscale = BASIC_RANGE/sprite_width
					image_yscale = BASIC_RANGE/sprite_height
				}
				return (true)
			} else {return (false)}
		}
	}
}