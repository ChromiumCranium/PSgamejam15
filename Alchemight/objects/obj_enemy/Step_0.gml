// enemies chasing player
move_towards_point(obj_player.x, obj_player.y, 3)

// wall collision of enemies (needs improvement)
if place_meeting(x, y, obj_wall)
{
speed = -speed
}