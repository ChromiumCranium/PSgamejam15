canAttack = 1

//pathfinding
// update path
path = path_add();

target = findNearestFriendly(self)
target_x = target.x;
target_y = target.y;

//scaling
image_xscale = BASIC_MINION_SIZE/(bbox_right-bbox_left);
image_yscale = BASIC_MINION_SIZE/(bbox_bottom-bbox_top);


//health
ownHealth = BASE_MINION_HEALTH
newDamage = 0

//value (how much loot to give)
//  ranked worst to best loot starting at 1
lvl = 0