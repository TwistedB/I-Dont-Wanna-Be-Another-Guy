image_xscale = myScale;
image_yscale = myScale;

if(myScale < 1)
{
	myScale += 0.1;
}

if(startMoving = true)
{
	canHit = true;
	if(mySpeed < 6.5)
	{
		mySpeed += 0.2;
	}
	image_angle += mySpeed * 2;
}

speed = mySpeed;

