//movement using arrow keys or WSAD
var _xinput = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")));
var _yinput = (keyboard_check(vk_down) or keyboard_check(ord("S"))) - (keyboard_check(vk_up) or keyboard_check(ord("W")));

//wall collision and horizontal movement speed limit
move_and_collide(_xinput * p_speed, _yinput * p_speed, obj_wall, 4, 0, 0, p_speed, p_speed)