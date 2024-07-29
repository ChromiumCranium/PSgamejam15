//directional sprite stuff
switch (((direction+45) mod 360) div 90) {
	case 0: sprite_index = spr_blobbertRIGHT; break;
	case 1: sprite_index = spr_blobbertUP; break;
	case 2: sprite_index = spr_blobbertLEFT; break;
	case 3: sprite_index = spr_blobbertDOWN; break;
	default: sprite_index = spr_blobbertUP; break;
}

draw_self()