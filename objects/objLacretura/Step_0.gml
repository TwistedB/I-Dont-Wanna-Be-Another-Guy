regen -= 1;
image_blend = c_white;
if(hp <= 0)
{
	instance_destroy();
}

if(keyboard_check_pressed(global.controls.jump) && grounded = true)
{
	yVel = -jumpHeight;
	grounded = false;
}

vspeed = yVel;

if(currentDir = -1)
{
	image_xscale = 1;
	hspeed = -xSpeed;
	
	if(x < startX-walkAmount)
	{
		currentDir = 1;
	}
}else
{
	image_xscale = -1;
	hspeed = xSpeed;

	if(x > startX)
	{
		currentDir = -1;
	}
}

if(y > startY)
{
	grounded = true;
	y -= yVel;
}

if(grounded = true)
{
	yVel = 0;
	y = startY;
	sprite_index = sprLacreturaWalk;
}else
{
	sprite_index = sprLacreturaJump;
	yVel += 0.2;
}