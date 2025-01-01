if(whichDir = 0)
{
	for (var i = 0; i < abs(hspeed); i += 1)
	{
		if(place_meeting(x + i * ((hspeed / hspeed) * dir), y, objEnemyBase))
		{
			hspeed = hspeed / 1.5;
		}else
		{
			hspeed = mySpeed;
		}
	}
}