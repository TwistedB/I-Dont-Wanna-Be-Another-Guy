alarm[0] = 10;

angleSpeed = 0;
startSpeeding = false;

facing = 0;

if(instance_exists(objPlayer))
{
	if(objPlayer.x > x)
	{
		facing = 1;
	}else
	{
		facing = -1;
	}
}