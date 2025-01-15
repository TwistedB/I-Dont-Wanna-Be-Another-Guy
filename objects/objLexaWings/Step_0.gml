if(!instance_exists(objLexaV1))
{
	instance_destroy();
}else
{
	if(BelowY = false)
	{
		myYSpeed += 0.2;
		vspeed = myYSpeed;
	
		if(y > objLexaV1.y+5)
		{
			BelowY = true;
		}
	}else if(BelowY = true && lockedIn = false)
	{
		myYSpeed -= 1;
		vspeed = myYSpeed;
		if(y < objLexaV1.y+5)
		{
			lockedIn = true;
			sc_Shake(5, 7);
			myYSpeed = 0;
		}
	}

	if(lockedIn = true)
	{
		image_angle += myYSpeed;
	
		if(drawWings = true)
		{
			myYSpeed += 0.5;
		}
		y = objLexaV1.y+5;
		x = objLexaV1.x+7;
	
		if(quickShake = false)
		{
			quickShake = true;
			alarm[0] = 20;
		}
	}

	if(fullAlpha = false)
	{
		image_alpha += 0.02;
	}else
	{
		image_alpha = random_range(0.3, 1);
	}
}