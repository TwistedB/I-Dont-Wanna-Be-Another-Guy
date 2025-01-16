if(startFade = true)
{
	image_alpha -= 0.003;
}

if(startScroll = true)
{
	if(y > -675)
	{
		vspeed = -0.25;
	}else
	{
		vspeed = 0;
	}
}

if(instance_exists(objPlayer))
{
	objPlayer.frozen = true;
}

if(instance_exists(objInventory))
{
	objInventory.visible = false;
}