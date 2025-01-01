/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(is_active_trigger("BossStart") && fightStart = false)
{
	play_music(bgmAGS, 1);
	fightStart = true;
	alarm[0] = 90;
}

if(fightStart = true)
{
	mask_index = sprite_index;
	if(getUp = 0)
	{
		image_alpha += 0.02;
	}
}



