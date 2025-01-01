event_inherited();
dest = 0;
startFollowing = false;

if(instance_exists(objPlayer))
{
	y = objPlayer.y - 200;
	dest = objPlayer.y-50;
}else
{
	instance_destroy();
}

startShoot = false;
image_alpha = 0;
yVel = 0;