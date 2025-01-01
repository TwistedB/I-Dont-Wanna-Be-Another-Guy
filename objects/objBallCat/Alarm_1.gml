if(playerSeen = true)
{
	var theBall = instance_create_layer(x+4*image_xscale, y-6, layer, objBallCatBall);
	theBall.hspeed = 2 * image_xscale;
}