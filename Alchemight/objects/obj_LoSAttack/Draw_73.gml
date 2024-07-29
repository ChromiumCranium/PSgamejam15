if (image_index = 4){
	instance_destroy(self)
}

image_yscale = point_distance(x, y, localTarget.x, localTarget.y)/initHeight
image_angle = point_direction(x, y, localTarget.x, localTarget.y) - 90;

draw_self()