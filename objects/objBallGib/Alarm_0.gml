if instance_exists(objPlayer)
{
	//Standby
    if (attack == 0)
    {
		sprite_index = sprBallGib;
		image_speed = 1;
	    a = 0
        b = 0
        c = 0
        d = 0	
		e = 0;
		
		attack = choose(1, 2, 3);
		alarm[0] = 30;
	}
	
	//Lunge
	if(attack = 1)
	{
		if(a < 2)
		{
			a += 1
		}
		if(a = 1)
		{
			sprite_index = sprBallGibRun;
			image_speed = 0.3;
			if(objPlayer.x > x)
			{
				b = 1;
				image_xscale = -1;
			}else
			{
				b = -1;
				image_xscale = 1;
			}
			alarm[0] = 50;
		}
		
		if(a >= 2 && a <= 9)
		{
			image_speed = 1 * a/5;
			if(b = 1)
			{
				a += 0.4;
				canHurt = true;
				hspeed = a;
				alarm[0] =  2;
			}else
			{
				a += 0.4;
				canHurt = true;
				hspeed = -a;
				alarm[0] =  2;	
			}
		}
		
		if(a > 9)
		{
			image_speed = 1;
			sprite_index = sprBallGib;
			hspeed = 0;
			attack = 0;
			canHurt = false;
			alarm[0] = 40;
			exit;
		}
	}
	
	//Jump
	if(attack = 2)
	{
		canHurt = true;
		a += 1;
		if(a = 1)
		{
			b = -4;
			sprite_index = sprBallGibRun;
			image_speed = 0.1;
		}
		
		if(a > 1)
		{
			b += 0.5;
			if(y > groundY)
			{
				sc_Shake(5, 5);
				y = groundY;
				b = random_range(-3, -4);
				c += 1;
				var GSL = instance_create_layer(x, groundY, layer, objBallGibGroundSlam);
				var GSR = instance_create_layer(x, groundY, layer, objBallGibGroundSlam);
				d = random_range(3, 4.5);
				e = random_range(0.7, 1.4);
				GSR.image_yscale = e;
				GSL.image_yscale = e;
				GSL.hspeed = -d;
				GSR.hspeed = d;
				GSR.image_xscale = -1;
			}
		}
		
		if(c > 6)
		{
			sprite_index = sprBallGib;
			image_speed = 1;
			attack = 0;
			canHurt = false
			y = groundY;
			b = 0;
			vspeed = 0;
			alarm[0] = 30;
			exit;
		}
		vspeed = b;
		if(c <= 6)
		{
			alarm[0] = 2;
		}
	}
	
	//Meow Attack
	if(attack = 3)
	{
		a += 1;
		
		if(a = 1)
		{
			sprite_index = sprBallGibRun;
			image_index = 0;
			image_speed = 0;
		}
		
		if(objPlayer.x > x)
		{
			b = 1;
			image_xscale = -1;
		}else
		{
			b = -1;
			image_xscale = 1;
		}
		
		if(b = 1 && a > 1)
		{
			instance_create_depth(x+32, y-60, depth-1, objMeowAttack);
		}else if(b = -1 && a > 1)
		{
			instance_create_depth(x-32, y-60, depth-1, objMeowAttack);
		}
		
		if(a = 6)
		{
			attack = 0;
			alarm[0] = 70
			exit;
		}else
		{
			alarm[0] = random_range(30, 40);
		}
	}
}else
{
	sprite_index = sprBallGib;
	hspeed = 0;
	vspeed = 0;
	y = groundY;
}