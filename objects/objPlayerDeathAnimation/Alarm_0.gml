if(myDir = 0)
{
	myDir = 1;
	image_xscale = 1;

	hVel = 2;
}else
{
	image_xscale = myDir;

	hVel = 2 * myDir;
}

if(mySkin = "Normal")
{
	sprite_index = sprPlayerDeath;
}else if(mySkin = "Harbinger")
{
	sprite_index = sprGUYDeath;
}