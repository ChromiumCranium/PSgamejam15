var success = false
path_delete(path);
path = path_add();


//PATHFINDING
if (attackType == "BASIC" || attackType == "SLAM" || attackType == "FLAMES"){
	//if there is an enemy
	if (findNearestEnemy(self) != noone){
		// where to go
		target = findNearestEnemy(self)
		target_x = target.x;
		target_y = target.y;

		//if there is no enemy in range, then move to one
		if (distance_to_object(findNearestEnemy(self)) >= range){
			// use the grid, make a path
			mp_grid_path(obj_setup_pathway.grid, path, x, y, target_x, target_y, 1);

			// follow path
			path_start(path, 2, path_action_stop, true);
		}
	
	
		//if cooldown over
		if (canAttack == 1){
			//attempt to attack
			success = attack(self,findNearestEnemy(self),attackType)
		
			//if successful
			if (success == true) {
				//reset cooldown
				canAttack = 0
				alarm[1] = game_get_speed(gamespeed_fps)*cooldown
			}
		}
	}
} else if (attackType == "LONG"){
	//if no LoS, use basic pathfinding
	
	//if there is an enemy
	if (findNearestEnemy(self) != noone){
		// where to go
		target = findNearestEnemy(self)
		target_x = target.x;
		target_y = target.y;

		//if there is no enemy in LoS, then move to one
		if (collision_line(x,y,target_x,target_y,obj_wall,false,true)){
			// use the grid, make a path
			mp_grid_path(obj_setup_pathway.grid, path, x, y, target_x, target_y, 1);

			// follow path
			path_start(path, 2, path_action_stop, true);
			
		} else if (collision_line(x,y,target_x,target_y,obj_wall,false,true) == noone){
			//if cooldown over
			if (canAttack == 1){
				
				//attempt to attack
				success = attack(self,findNearestEnemy(self),attackType)
		
				//if successful
				if (success == true) {
					//reset cooldown
					canAttack = 0
					alarm[1] = game_get_speed(gamespeed_fps)*cooldown
				}
			}
		}
	}
	
}