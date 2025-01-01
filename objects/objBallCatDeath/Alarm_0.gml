if(myDir = 0)
{
	myDir = 1;
	image_xscale = 1;

	hVel = 3;
}else
{
	image_xscale = myDir;

	hVel = 3 * myDir;
}