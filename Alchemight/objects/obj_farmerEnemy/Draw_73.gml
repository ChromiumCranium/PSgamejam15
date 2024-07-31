//directional sprite stuff
switch (((direction+45) mod 360) div 90) {
	case 0: sprite_index = spr_farmerRIGHT; break;
	case 1: sprite_index = spr_farmerUP; break;
	case 2: sprite_index = spr_farmerLEFT; break;
	case 3: sprite_index = spr_farmerDOWN; break;
	default: sprite_index = spr_farmerUP; break;
}
draw_self()