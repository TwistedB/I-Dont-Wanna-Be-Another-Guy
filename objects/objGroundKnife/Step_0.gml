if(!instance_exists(objAxelV1))
{
	image_alpha -= 0.05;
	mask_index = sprEmpty;
}

if(image_alpha <= 0)
{
	instance_destroy();
}