var dodgeOrNot = choose(0, 1);

if(dodgeOrNot = 1)
{
	shadowShown = true;
	image_alpha = random_range(0.7, 0.9);
	if(x < 900 && x > 190)
	{
		hspeed = irandom_range(-4, 4);
	}else if(x < 190)
	{
		hspeed = 4;
	}else if(x > 900)
	{
		hspeed = -4;
	}
	alarm[0] = 30;
	exit;
}else
{
	alarm[0] = 30;
}