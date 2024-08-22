canAttack = 1

//pathfinding
// update path
path = path_add();

target = findNearestFriendly(self)
target_x = target.x;
target_y = target.y;
mask_index = spr_farmerCollisionMask

//scaling (sprite and mask)
shit = FARMER_WIDTH/sprite_width
image_xscale = shit
image_yscale = shit


//health
ownHealth = BASE_MINION_HEALTH * FARMER_HEALTH_MOD
newDamage = 0

//stats
str = BASE_MINION_STRENGTH * FARMER_STRENGTH_MOD
spd = BASE_MINION_SPEED * FARMER_SPEED_MOD

//value (how much loot to give)
//  ranked worst to best loot starting at 1
lvl = 1