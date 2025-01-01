image_alpha -= 0.05;
vspeed = yVel;
yVel += 0.2;
hspeed = hVel;

if(image_alpha < 0)
{
	instance_destroy();
}