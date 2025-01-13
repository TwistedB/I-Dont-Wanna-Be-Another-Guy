if(instance_exists(objAxelV1))
{
	if(objAxelV1.sprite_index = sprAxelV1Blast)
	{
		x = objAxelV1.x;
		y = objAxelV1.y+32;	
	}else if(objAxelV1.sprite_index = sprAxelV1GetUp)
	{
		if(objAxelV1.image_index = 0)
		{
			x = objAxelV1.x;
			y = objAxelV1.y+32;		
		}
		
		if(objAxelV1.image_index = 1 || objAxelV1.image_index = 2)
		{
			x = objAxelV1.x;
			y = objAxelV1.y+16;		
		}

		if(objAxelV1.image_index > 2)
		{
			x = objAxelV1.x;
			y = objAxelV1.y;		
		}
	}
	else
	{
		x = objAxelV1.x;
		y = objAxelV1.y;
	}
	
	image_xscale = objAxelV1.image_xscale;
	image_alpha = random_range(0.1, 0.9);
	
	if(objAxelV1.hitBy = 0)
	{
		image_blend = merge_colour(c_green, c_blue, merge);
	}
	
	if(objAxelV1.hitBy = 1)
	{
		image_blend = merge_colour(c_blue, c_yellow, merge);
	}
	
	if(objAxelV1.hitBy = 2)
	{
		image_blend = merge_colour(c_yellow, c_red, merge);
	}
	
	if(objAxelV1.hitBy = 3)
	{
		image_blend = merge_colour(c_red, c_green, merge);
	}
}else
{
	instance_destroy();
}

if(merge < 1)
{
	merge += 0.1;
}