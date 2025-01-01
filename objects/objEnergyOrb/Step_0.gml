if(blockHit = true && preparingTheDeath = false)
{
	preparingTheDeath = true;
	alarm[0] = 30;
}

if(slowDown = true && finalAttack = false)
{
	if(speed > 0)
	{
		speed -= 0.1;
	}else
	{
		speed = 0;
		alarm[1] = 10;
		finalAttack = true;
	}
}

if(finalAttack = true)
{
	image_alpha -= 0.02;
	
	if(image_alpha <= 0)
	{
		instance_destroy();
	}
}

image_xscale = myScale;
image_yscale = myScale;