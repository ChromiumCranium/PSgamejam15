
//for collisions where the calling object is the only one that should move
//changes direction of movement to help instances around obstacles
function inelasticCollision(x,y,spd,dir,nonmover) {
	var xspeed = spd*cos(dir)
	var yspeed = spd*sin(dir)
	
	//if x coordinate would be blocked, divert all speed to vertical movement
	if (place_meeting(x + xspeed,y,nonmover)){
		newDir = sign(yspeed)*90
	}
	
	//if y coordinate would be blocked, divert all speed to horizontal movement
	else if (place_meeting(x,y + yspeed,nonmover)){
		newDir = ((sign(xspeed)-1) / 2)*180 //this ensures you will always get either 0 or -180 
	} else {
		newDir = dir
	}
	
	return newDir
}