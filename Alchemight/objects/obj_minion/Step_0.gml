var success = false
path_delete(path);
path = path_add();

//if there is an enemy
if (findNearestEnemy(self) != noone){
	// where to go
	target = findNearestEnemy(self)
	target_x = target.x;
	target_y = target.y;

	//if there is no enemy in range, then move to one
	if (distance_to_object(findNearestEnemy(self)) >= BASIC_RANGE){
		// use the grid, make a path
		mp_grid_path(obj_setup_pathway.grid, path, x, y, target_x, target_y, 1);

		// follow path
		path_start(path, 2, path_action_stop, true);
	}
	
	
	//if cooldown over
	if (canAttack == 1){
		//attempt to attack
		success = attack(self,findNearestEnemy(self),"BASIC",BASE_MINION_STRENGTH,"FRIENDLY")
		
		//if successful
		if (success == true) {
			//reset cooldown
			canAttack = 0
			alarm[1] = game_get_speed(gamespeed_fps)*BASIC_COOLDOWN
		}
	}
}

//health
ownHealth = clamp(ownHealth,0,BASE_MINION_HEALTH)
ownHealth -= newDamage
newDamage = 0

//death
if (ownHealth <= 0) Kill(self)