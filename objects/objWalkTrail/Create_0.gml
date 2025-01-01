image_index = irandom_range(0, 3);

facing = 1;
image_alpha = random_range(0.6, 0.8);
decreaseRate = random_range(0.04, 0.1)

fallRate = random_range(0.1, 0.2);

if(instance_exists(objPlayer))
{
	facing = -objPlayer.xscale;
	x = objPlayer.x + facing * 4;
	y = objPlayer.y+2;
}

yVel = irandom_range(-1, -2)
hVel = random_range(0.5, 1) * facing;