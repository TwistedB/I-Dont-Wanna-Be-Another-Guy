/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(is_active_trigger("BossStart") && fightStart = false)
{
	fightStart = true;
	play_music(bgmBallGib, 1);
	alarm[0] = 40;
	mask_index = sprite_index;
}
