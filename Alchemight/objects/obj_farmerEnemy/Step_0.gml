var success = false
path_delete(path);
path = path_add();

//if there is an enemy
if (findNearestFriendly(self) != noone){
	// where to go
	target = findNearestFriendly(self)
	target_x = target.x;
	target_y = target.y;

	//if there is no enemy in range, then move to one
	if (distance_to_object(findNearestFriendly(self)) >= BASIC_RANGE * 0.8){
		// use the grid, make a path
		mp_grid_path(obj_setup_pathway.grid, path, x, y, target_x, target_y, 1);
		
		// follow path
		path_start(path, spd, path_action_stop, true);
	}
	
	
	//if cooldown over
	if (canAttack == 1){
		//attempt to attack
		success = attack(self,findNearestFriendly(self),"BASIC",BASE_MINION_STRENGTH,"ENEMY")
		
		//if successful
		if (success == true) {
			//reset cooldown
			canAttack = 0
			alarm[1] = game_get_speed(gamespeed_fps)*BASIC_COOLDOWN
		}
	}
}

mask_index = spr_farmerCollisionMask

var nonmover = obj_wall

//wall collision
	var xspeed = spd*cos(direction)
	var yspeed = spd*sin(direction)
	
	//if x coordinate would be blocked, divert all speed to vertical movement
	if (place_meeting(x + xspeed,y,nonmover)){
		direction = sign(yspeed)*90
	}
	
	//if y coordinate would be blocked, divert all speed to horizontal movement
	else if (place_meeting(x,y + yspeed,nonmover)){
		direction = ((sign(xspeed)-1) / 2)*180 //this ensures you will always get either 0 or -180 
	}
	

//health system
ownHealth = clamp(ownHealth,0,BASE_MINION_HEALTH)
ownHealth -= newDamage
newDamage = 0

//death
if (ownHealth <= 0) Kill(id)