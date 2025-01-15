instance_create_depth(x, y, depth, objLexaEffect);
instance_create_depth(x, y, depth+1, objLexaShadow);
instance_create_depth(x, y, depth+1, objLexaShadow);
if(instance_exists(objPlayer))
{
	if(x < 464 && x > 116)
	{
		x = random_range(objPlayer.x+200, objPlayer.x-200);
	}else if(x > 464)
	{
		x = random_range(objPlayer.x-200, objPlayer.x);
	}else if(x < 116)
	{
		x = random_range(objPlayer.x+200, objPlayer.x);
	}
}else
{
	x = random_range(x-100, x+100);
}
repeatTp += 1;

if(repeatTp < 7)
{
	alarm[2] = 6;
}else
{
	fastTp = false;
}