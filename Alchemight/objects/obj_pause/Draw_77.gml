
if (pause) //draws image on screen
{
	surface_set_target(application_surface);
		if (surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0) ;
		else
		{
			pauseSurf = surface_create(resW,resH);
			buffer_set_surface(pauseSurfBuffer,pauseSurf,0);
		}
	surface_reset_target();
}

if (keyboard_check_pressed(vk_escape)) // toggle pause
{
	if (!pause) //pause now
	{
		pause = true;
		
		instance_deactivate_all(true);
		
		pauseSurf = surface_create(resW,resH);
		surface_set_target(pauseSurf);
			draw_surface(application_surface,0,0);
			
			// Set color.
			// This will be a semi-transparent black.
			draw_set_alpha(0.5);
			draw_set_colour(c_black);

			// Draw rectangle filling the screen.
			draw_rectangle(0, 0, resW, resH, 0);

			// Set color to opaque white.
			draw_set_colour(c_white);
			draw_set_alpha(1);

			// Set font.
			draw_set_font(fnt_vinque);

			// Align drawn text horizontally and vertically.
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);

			// Draw pause text.
			draw_text(resW / 2, resH / 2, "GAME PAUSED");
			
			// Create pause menu
			instance_create_layer(obj_camera.x, obj_camera.y + 100, "cameraLayer", obj_button_quit);
			
					
		surface_reset_target();
		
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	else //unpause
	{
		pause = false;
		instance_destroy(obj_button_quit);
		instance_activate_all();
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}
