var knifeSpeed = choose(-2.5, -2, -1, 1, 2, 2.5);

if(knifeSpeed > 0)
{
	spawnLocation = -16;
}else
{
	spawnLocation = room_width+16;
}
var groundKnife = instance_create_depth(spawnLocation, y, depth, objGroundKnife)
groundKnife.hspeed = knifeSpeed;

if(instance_exists(objAxelV1))
{
	if(objAxelV1.hp > objAxelV1.maxHP/4)
	{
		alarm[0] = random_range(200, 600);
	}else
	{
		alarm[0] = random_range(50, 100);
	}
}