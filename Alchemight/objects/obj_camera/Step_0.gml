if (follow != noone)
	{
		x_to = follow.x;
		y_to = follow.y;
	}
	
x += (x_to - x)/10;
y += (y_to - y)/10;
x = clamp(x, (cam_width/2), ROOM_WIDTH-(cam_width/2))
y = clamp(y, (cam_height/2), ROOM_HEIGHT-(cam_width/2))

camera_set_view_pos(view_camera[0], x-(cam_width*0.5), y-(cam_height*0.5));