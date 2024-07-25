canAttack = 1

//pathfinding
// update path
path = path_add();

target = findNearestFriendly(self)
target_x = target.x;
target_y = target.y;
str = stats.strengthMod * SPECIAL_MINION_STR_MOD * BASE_MINION_STRENGTH
spd = stats.speedMod * SPECIAL_MINION_SPD_MOD * BASE_MINION_SPEED
hp = stats.healthMod * SPECIAL_MINION_HP_MOD * BASE_MINION_HEALTH

attackType = "BASIC"
range = BASIC_RANGE
cooldown = BASIC_COOLDOWN

//PLACEHOLDER -- I DON'T REALLY LIKE THIS SYSTEM

//Determine minion attack type (ORDER OF IF STATEMENTS MATTERS)
//ground slam if beefy no matter strength
if (hp >= 3 * BASE_MINION_HEALTH) {
	attackType = "SLAM"
	range = SLAM_RANGE
	cooldown = SLAM_COOLDOWN
} else if ((2 * BASE_MINION_HEALTH) < hp < (3 * BASE_MINION_HEALTH)) {
	//flamethrower if mid beefy
	attackType = "FLAMES"
	range = FLAMES_RANGE
	cooldown = FLAMES_COOLDOWN
} else if (hp < 2 * BASE_MINION_HEALTH) {
	//long range if strong but weak
	attackType = "LONG"
	cooldown = LONG_COOLDOWN
}