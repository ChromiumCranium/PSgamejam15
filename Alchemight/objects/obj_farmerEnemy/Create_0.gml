canAttack = 1

//pathfinding
// update path
path = path_add();

target = findNearestFriendly(self)
target_x = target.x;
target_y = target.y;

//scaling
image_yscale = FARMER_SIZE/sprite_height;
image_xscale = FARMER_SIZE/sprite_width;

//health
ownHealth = BASE_MINION_HEALTH * FARMER_HEALTH_MOD
newDamage = 0

//strength
str = BASE_MINION_STRENGTH * FARMER_STRENGTH_MOD

//value (how much loot to give)
//  ranked worst to best loot starting at 1
lvl = 1