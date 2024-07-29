//healthbar

draw_set_alpha(0.7)

//adjust coords to be at bottom left corner
draw_healthbar(
	x - (sprite_width/2),
	y + (sprite_height/2),
	x + (sprite_width/2),
	y + (sprite_height/2) + 5,
	global.playerHealth/2,
	#6a5978,
	#ff3535,
	#ff3535,
	0,
	false,
	true
	)

draw_set_alpha(1)

draw_self()