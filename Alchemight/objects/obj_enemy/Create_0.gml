canAttack = 1

//pathfinding
// update path
path = path_add();

target = findNearestFriendly(self)
target_x = target.x;
target_y = target.y;

//health
ownHealth = BASE_MINION_HEALTH
newDamage = 0

//value (how much loot to give)
//  ranked worst to best loot starting at 1
rarity = 1