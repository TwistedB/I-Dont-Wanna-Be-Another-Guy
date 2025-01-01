if(instance_exists(objAxelV1))
{
	if(objAxelV1.hp > objAxelV1.maxHP/4)
	{
		alarm[0] = random_range(70, 200);
	}else
	{
		alarm[0] = random_range(20, 50);
	}
}

spawnLocation = 0;