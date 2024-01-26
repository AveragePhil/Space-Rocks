/// @description Insert description here
// You can write your code in this editor

score += 10
instance_destroy(other);
	if(sprite_index == spr_asteriod_huge)
	{
		repeat(2)
		{
			var new_asteroid = instance_create_layer(x,y, "Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_asteriod_mid;
		}
	} else if(sprite_index == spr_asteriod_mid)
	{
		repeat(2)
		{
			var new_asteroid = instance_create_layer(x,y, "Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_asteriod_small;
		}
	}
	repeat(10)
	{
		instance_create_layer(x,y, "Instances", obj_debris);
	}
audio_play_sound(snd_die, 1, false);
effect_create_below(ef_explosion,x,y, 0.1, c_white)
