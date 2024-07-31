//if not attacking
//if (sprite_index != spr_blobbadATTACK) {
	
	//directional sprite stuff
	switch (((direction+45) mod 360) div 90) {
		case 0: sprite_index = spr_blobbadRIGHT; break;
		case 1: sprite_index = spr_blobbadUP; break;
		case 2: sprite_index = spr_blobbadLEFT; break;
		case 3: sprite_index = spr_blobbadDOWN; break;
		default: sprite_index = spr_blobbadUP; break;
	}

//} else { 
//	if(image_index >= sprite_get_number(sprite_index) - 1){
	
//		//otherwise wait for end of animation and reset sprite to non attack mode
//		sprite_index = spr_blobbadUP
//	}
//}

draw_self()