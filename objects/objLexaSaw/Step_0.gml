image_alpha += 0.2;

if(myScale < 1)
{
	myScale += 0.05;
}else
{
	myScale = 1;
}

if(isGrounded = false)
{
	if(leftOrRight = 1)
	{
		hspeed = 2;
	}else
	{
		hspeed = -2;
	}
}

if(y > theGround && isGrounded = false)
{
	mask_index = sprite_index;
	y = theGround;
	isGrounded = true;
	MyGrav = 0;
}

if(isGrounded = false)
{
	MyGrav += 0.2;
	vspeed = MyGrav;
}else
{
	vspeed = 0;
	hspeed = MyGrav;
}

if(leftOrRight = 1 && isGrounded = true)
{
	if(MyGrav > -5)
	{
		MyGrav -= 0.1;
	}
	image_angle -= MyGrav * 3;
}else
{
	if(MyGrav < 5)
	{
		MyGrav += 0.1;
	}
	image_angle += MyGrav * 3;
}


image_xscale = myScale;
image_yscale = myScale;