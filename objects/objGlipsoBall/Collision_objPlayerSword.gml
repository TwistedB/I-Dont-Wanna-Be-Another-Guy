if(parry = true)
{
	if(hspeed != 0 || vspeed != 0)
	{
		if(hspeed < 0 && other.image_xscale = 1)
		{
			instance_destroy(other);
			bullet = true;
			if(instance_exists(objGlipso))
			{
				direction = point_direction(x, y, objGlipso.x, objGlipso.y);
				speed *= 2;
				glipsoTarget = true;
			}else
			{
				speed = -speed*2;
			}
		}else if(hspeed > 0 && other.image_xscale = -1)
		{
			instance_destroy(other);	
			bullet = true;
			if(instance_exists(objGlipso))
			{
				direction = point_direction(x, y, objGlipso.x, objGlipso.y);
				speed *= 2;
				glipsoTarget = true;
			}else
			{
				speed = -speed*2;
			}
		}
	}
}