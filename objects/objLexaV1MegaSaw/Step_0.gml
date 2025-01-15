if(image_index > 2)
{
	image_speed = 0;
}

if(startSpeeding = true)
{
	if(facing = 1)
	{
		if(angleSpeed > -3)
		{
			angleSpeed -= 1;
		}
	}else
	{
		if(angleSpeed < 3)
		{
			angleSpeed += 1;
		}
	}
}

if(instance_exists(objLexaV1))
{
	x = objLexaV1.x;
	y = objLexaV1.y;
}else
{
	instance_destroy();
}

image_angle += angleSpeed;