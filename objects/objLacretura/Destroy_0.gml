/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(destroySound = true)
{
	var body = instance_create_depth(x, y, depth, objLacreturaDead);
	body.facing = -image_xscale;
	body.mySpeed = 3 * -image_xscale;
	body.startY = startY;
}
