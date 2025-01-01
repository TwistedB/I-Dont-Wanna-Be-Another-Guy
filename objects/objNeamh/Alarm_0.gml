if instance_exists(objPlayer)
{
	//Standby
    if (attack == 0)
    {
	    a = 0
        b = 0
        c = 0
        d = 0	
		e = 0;
		
		objPlayer.Beingdragged = false;
		
		attack = choose(1, 2);
		alarm[0] = 30;
	}
	
	//Laser
    if (attack == 1)
    {
		a += 1
		
		if(a = 1)
		{
			instance_create_layer(objPlayer.x, 1424, layer, objNeamhLaser);
			c = objPlayer.x;
			alarm[0] = 40;
		}
		
		if(a > 1)
		{
			if(d = 0)
			{
				if(objPlayer.x > c)
				{
					e = 1
				}else
				{
					e = -1;
				}
			}
			if(d < 12)
			{
				d += 1
				if(e = 1)
				{
					var laser = instance_create_layer(c + d*16, 1424, layer, objNeamhLaser);
					laser.lazerTime = 2;
				}else
				{
					var laser = instance_create_layer(c - d*16, 1424, layer, objNeamhLaser);
					laser.lazerTime = 2;				
				}
				alarm[0] = 3;
			}else
			{
				attack = 0;
				alarm[0] = 50;
				exit;
			}
		}
	}
	
	//Rand 360
	if(attack == 2)
	{
		a += 1
		objPlayer.Beingdragged = true;
		
		if(objPlayer.x < x)
		{
			objPlayer.dragSpeed += 0.05;
		}else
		{
			objPlayer.dragSpeed -= 0.05;
		}
		
		if(a < 50)
		{
			var bullet = instance_create_depth(x, orbY+startY-130, -2, objCherry);
			bullet.sprite_index = sprGlipsoBall;
			bullet.direction = random_range(0, 360);
			bullet.speed = random_range(2, 4);
			b = random_range(0.7, 1.5);
			bullet.image_xscale = b;
			bullet.image_yscale = b;
			alarm[0] = 4;
		}else
		{
			attack = 0;
			objPlayer.Beingdragged = false;
			alarm[0] = 50;
			exit;
		}
	}
}