canAttack = 1

//pathfinding
// update path
path = path_add();

target = findNearestFriendly(self)
target_x = target.x;
target_y = target.y;
image_xscale = BASIC_MINION_SIZE/sprite_width
image_yscale = BASIC_MINION_SIZE/sprite_height

//health
ownHealth = BASE_MINION_HEALTH
newDamage = 0