var success = false

//if there is an enemy
if (findNearestEnemy(self) != noone){
	//pathfind towards nearest enemy
	
	
	//if cooldown over
	if (canAttack == 1){
		//attempt to attack
		success = attack(self,findNearestEnemy(self),"BASIC")
		
		//if successful
		if (success == true) {
			show_debug_message("SUCCESSFUL ATTACK")
			//reset cooldown
			canAttack = 0
			alarm[0] = game_get_speed(gamespeed_fps)*1.5
		} else {
			
		}
	}
}