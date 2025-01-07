if(parry = true)
{
	if(hspeed != 0 || vspeed != 0)
	{
		if(hspeed < 0 && other.image_xscale = 1)
		{
			instance_destroy(other);
			speed = -speed*2;
			bullet = true;
			canHit = false;
		}else if(hspeed > 0 && other.image_xscale = -1)
		{
			instance_destroy(other);
			speed = -speed*2;		
			bullet = true;
			canHit = false;
		}
	}
}