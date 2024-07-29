//movement using arrow keys or WSAD
var _xinput = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")));
var _yinput = (keyboard_check(vk_down) or keyboard_check(ord("S"))) - (keyboard_check(vk_up) or keyboard_check(ord("W")));

//wall collision and horizontal movement speed limit
move_and_collide(_xinput * p_speed, _yinput * p_speed, obj_wall, 2, 0, 0, p_speed, p_speed)

// animated walk
if (keyboard_check(vk_right) or keyboard_check(ord("D")))
	{
		image_speed = p_speed / 3;
		sprite_index = spr_docWalkRight;
	}
if (keyboard_check(vk_left) or keyboard_check(ord("A")))
	{
		image_speed = p_speed / 3;
		sprite_index = spr_docWalkLeft;
	}
if (keyboard_check(vk_up) or keyboard_check(ord("W")))
	{
		image_speed = p_speed / 3;
		sprite_index = spr_docWalkUp;
	}
if (keyboard_check(vk_down) or keyboard_check(ord("S")))
	{
		image_speed = p_speed / 3;
		sprite_index = spr_docWalkDown;
	}
if (keyboard_check(vk_nokey))
	{
	image_speed = 0;
	image_index = 0;
	}

//scale down sprite
image_xscale = PLAYER_SCALE_FACTOR
image_yscale = PLAYER_SCALE_FACTOR

//health
global.playerHealth = clamp(global.playerHealth,0,MAX_PLAYER_HEALTH)
global.playerHealth -= newDamage
newDamage = 0

//TODO: ADD DEATH