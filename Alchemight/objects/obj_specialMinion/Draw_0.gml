draw_set_alpha(0.5)

draw_healthbar(
	x - (sprite_width/2),
	y + (sprite_height/2),
	x + (sprite_width/2),
	y + (sprite_height/2) + 5,
	(hp/maxhp)*100,
	#6a5978,
	#e01dcd,
	#e01dcd,
	0,
	false,
	true
	)
	
draw_set_alpha(1)
draw_self()