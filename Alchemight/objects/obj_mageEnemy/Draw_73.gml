//directional sprite stuff
switch (((direction+45) mod 360) div 90) {
	case 0: sprite_index = spr_mageRIGHT; break;
	case 1: sprite_index = spr_mageUP; break;
	case 2: sprite_index = spr_mageLEFT; break;
	case 3: sprite_index = spr_mageDOWN; break;
	default: sprite_index = spr_mageUP; break;
}

draw_self()