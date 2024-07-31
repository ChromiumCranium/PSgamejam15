//When the player presses space, a minion is spawned on the mouse position

//if the distance is low enough and cooldown is over
if (distance_to_point(mouse_x,mouse_y) < 300 && canMinion == 1 && place_empty(mouse_x,mouse_y)) {
	//reset cooldown
	canMinion = 0
	alarm[0] = game_get_speed(gamespeed_fps) * MINION_COOLDOWN
	instance_create_layer(mouse_x,mouse_y,"entityLayer",obj_minion)
}