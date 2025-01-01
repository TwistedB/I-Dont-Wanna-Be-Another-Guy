for(var i = 1; i < 4; i += 1)
{
	dir = objPlayer.xscale;
	theBomb = instance_create_layer(x, y, layer, objPlayerBomb);
	theBomb.dir = dir;
	if(objPlayer.hspd = 0)
	{
		theBomb.hspeed = (1 + i/2) * dir;
		theBomb.yVel = -3 - i
	}else
	{
		theBomb.hspeed = (2.5 + i/2) * dir;
		theBomb.yVel = -3 - i
	}
}


instance_destroy();