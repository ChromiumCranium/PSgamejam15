draw_set_alpha(0.5)

draw_healthbar(
	x - (sprite_width/2),
	y + (sprite_height/2),
	x + (sprite_width/2),
	y + (sprite_height/2) + 5,
	(ownHealth/BASE_MINION_HEALTH)*100,
	#6a5978,
	#ff3535,
	#ff3535,
	0,
	false,
	true
	)
	
draw_set_alpha(1)
draw_self()