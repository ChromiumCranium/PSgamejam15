/// @description Inflict damage
//Inflict damage by checking for collisions across each frame of animation, 
//then applying damage to all of the colliding instances on destroy event
var attk = atk
for (var i = 0; i < array_length(collisions); i++){
	show_debug_message(collisions[i])
	with (collisions[i]){
		newDamage = attk
		show_debug_message(attk)
	}
}

instance_destroy(self)