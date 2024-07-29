//directional sprite stuff
switch (((direction+45) mod 360) div 90) {
	case 0: sprite_index = spr_geraldRIGHT; break;
	case 1: sprite_index = spr_geraldUP; break;
	case 2: sprite_index = spr_geraldLEFT; break;
	case 3: sprite_index = spr_geraldDOWN; break;
	default: sprite_index = spr_geraldUP; break;
}

draw_self()