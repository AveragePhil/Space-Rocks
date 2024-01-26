/// @description Insert description here
// You can write your code in this editor

x = obj_ship.x -32;
y = obj_ship.y -32;

image_alpha = image_alpha - 0.002;
if(image_alpha <- 0)
{
	instance_destroy();
	audio_play_sound(snd_zap, 1, false);
	effect_create_below(ef_ring,x, y,1,c_white)
}

move_wrap(true,true,sprite_width/2);

