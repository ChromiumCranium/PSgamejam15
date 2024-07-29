initHeight = 64
image_yscale = distance_to_object(localTarget)/initHeight
image_angle = point_direction(x, y, localTarget.x, localTarget.y) - 90;

show_debug_message("LOS ATTACK CREATED")

//init hit tracking
collisions = array_create(1,localTarget)