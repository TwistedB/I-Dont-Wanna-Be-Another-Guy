if(image_alpha < 0)
{
	instance_destroy();
}

image_alpha -= decreaseRate;

vspeed = yVel;
yVel += fallRate;

hspeed = hVel;