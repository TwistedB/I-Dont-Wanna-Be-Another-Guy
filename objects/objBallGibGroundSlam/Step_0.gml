if(!instance_exists(objBallGib))
{
	instance_destroy();
}

canHit = true;

image_alpha += 0.1;
mask_index = sprite_index;