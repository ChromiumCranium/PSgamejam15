canAttack = 0

//pathfinding
// update path
path = path_add();

target = findNearestFriendly(self)
target_x = target.x;
target_y = target.y;
str = strengthMod * SPECIAL_MINION_STR_MOD * BASE_MINION_STRENGTH
spd = speedMod * SPECIAL_MINION_SPD_MOD * BASE_MINION_SPEED
maxhp = healthMod * SPECIAL_MINION_HP_MOD * BASE_MINION_HEALTH
hp = maxhp
newDamage = 0

attackType = "BASIC"
range = BASIC_RANGE
cooldown = BASIC_COOLDOWN
image_xscale = SPECIAL_MINION_SIZE/sprite_width
image_yscale = SPECIAL_MINION_SIZE/sprite_height


//PLACEHOLDER -- I DON'T REALLY LIKE THIS SYSTEM
//other ideas: 
//1. Ingredients determine type
//2. whichever type has fewest in game

//Determine minion attack type (ORDER OF IF STATEMENTS MATTERS)
//ground slam if beefy no matter strength
if (hp >= SLAM_LOWER_HP_MOD * BASE_MINION_HEALTH) {
	attackType = "SLAM"
	range = SLAM_RADIUS
	cooldown = SLAM_COOLDOWN
}  else if (hp <= LONG_UPPER_HP_MOD * BASE_MINION_HEALTH) {
	//long range if strong but low health
	attackType = "LONG"
	cooldown = LONG_COOLDOWN
} else {
	attackType = "BASIC"
	range = BASIC_RANGE
	cooldown = BASIC_COOLDOWN
}