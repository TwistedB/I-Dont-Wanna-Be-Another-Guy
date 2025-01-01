/// @description Trail effect
with(instance_create_depth(x, y, depth+1, objTrail))
{
	xscale = other.image_xscale;
	image_yscale = other.image_xscale;
	image_angle = other.image_angle;
	sprite_index = other.sprite_index;
	image_blend = c_white;
	image_alpha = 0.7;
}

if(focusMode > 0)
{
	alarm[2] = 5;
}