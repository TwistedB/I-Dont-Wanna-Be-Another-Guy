if(parry = true)
{
	if(hspeed != 0 || vspeed != 0)
	{
		if(hspeed < 0 && other.image_xscale = 1)
		{
			instance_destroy(other);
			hspeed = -hspeed*2;
			bullet = true;
		}else if(hspeed > 0 && other.image_xscale = -1)
		{
			instance_destroy(other);
			hspeed = -hspeed*2;		
			bullet = true;
		}
	}
}