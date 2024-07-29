function findNearestEnemy(entity){
	return(instance_nearest(entity.x,entity.y,obj_enemyParent))
}
function findNearestFriendly(entity){
	return(instance_nearest(entity.x,entity.y,obj_friendParent))
}