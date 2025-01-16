/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
audio_stop_sound(bgmLexa);
instance_create_depth(x, startY, depth-1, objLexaDeath);

with(objLexaBullet)
{
	instance_destroy();
}

with(objLexaSaw)
{
	instance_destroy();
}