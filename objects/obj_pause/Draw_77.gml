/// @description Insert description here
// You can write your code in this editor

gpu_set_blendenable(false);

if (pause)
{
	surface_set_target(application_surface);
		if (surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0);
		else
		{
			pauseSurf = surface_create(resW,resH);
			buffer_set_surface(pauseSurfBuffer,pauseSurf,0);
		}
	surface_reset_target();
}

if (keyboard_check_pressed(ord("F")))
{		
	if (!pause)
	{
		pause = true;
		draw_text_transformed_color(400,400, "PAUSED", 4,4,0,c_white,c_white,c_white,c_white,1);
		instance_deactivate_all(true);
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
			draw_surface(application_surface,0,0);
		surface_reset_target();
		
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed,1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf,0);

	}
	else
	{
		pause = false;
		instance_activate_all();
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}

gpu_set_blendenable(true);
