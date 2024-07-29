function attack(attacker,target,attackType,str,attackerType){
	//if there is an enemy on the map
	if (target != noone){
		
		importedVars = {
			atk : str,
			offenderTeam : attackerType,
			localTarget : target,
			offender : attacker
		}
		
		if(attackType == "BASIC"){
			
			//if within range
			if(distance_to_object(target) < BASIC_RANGE){
				
				instance_create_layer(x,y,"attackLayer",obj_basicAttack,importedVars)
				
				return (true)
				
			} else {return (false)}
			
		} else if (attackType == "SLAM"){
			
			//no range check, just attack
			with(instance_create_layer(x,y,"attackLayer",obj_AOEAttack,importedVars)){
					image_alpha = 0.7
					image_xscale = 1.2*BASIC_RANGE/sprite_width
					image_yscale = 1.2*BASIC_RANGE/sprite_height	
				}
				
			return(true)
			
		} else if (attackType == "FLAMES"){
			
			//if within range
			if(distance_to_object(target) < FLAMES_RANGE){
				
				with(instance_create_layer(x,y,"attackLayer",obj_midRangeAttack,importedVars)){
					image_alpha = 0.7
					image_xscale = 1.2*FLAMES_RANGE/sprite_width
					image_yscale = 1.2*FLAMES_RANGE/sprite_height	
				}
				
				return (true)
				
			} else {return (false)}
			
		} else if (attackType == "LONG"){
			
			with(instance_create_layer(x,y,"attackLayer",obj_LoSAttack,importedVars)){
				image_alpha = 0.7
			}
				
			return (true)
				
		}
	}
}