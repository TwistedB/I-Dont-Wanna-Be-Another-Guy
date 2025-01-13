if instance_exists(objPlayer)
{
	//Standby
    if (attack == 0)
    {
		shadowShown = false;
		hspeed = 0;
		image_alpha = 1;
		if(getUp = 0)
		{
			alarm[3] = 5;
			instance_create_depth(x, y, depth-2, objAxelShield)
			image_index = 0;
			sprite_index = sprAxelV1GetUp;
			instance_create_depth(x, startY, depth, objGroundKnifeSpawner)
			instance_create_depth(x, y, depth+1, objAxelWings);
		}
		
	    a = 0
        b = 0
        c = 0
        d = 0	
		e = 0;
		
		if(hitBy < 3)
		{
			hitBy += 1
			if(instance_exists(objAxelWings))
			{
				objAxelWings.merge = 0;
			}
		}else
		{
			hitBy = 0;
			if(instance_exists(objAxelWings))
			{
				objAxelWings.merge = 0;
			}
		}
		
		getUp += 1;
		
		attack = choose(1, 2, 3);
		alarm[0] = 50;
		exit;
	}
	
	//Lazer Attack
	if(attack = 1)
	{
		a += 1;
	
		if(a = 1)
		{
			if(objPlayer.x > x)
			{
				image_xscale = -1;
			}else{
				image_xscale = 1;
			}
		
			sprite_index = sprAxelV1Blast;
			audio_play_sound(sndSwordDraw, 0, 0);
			alarm[0] = 50;
		}
		
		if(a = 2)
		{
			instance_create_depth(x, y-16, depth, objAxelBlast);
			alarm[0] = 20;
		}
		
		if(a = 3)
		{
			sprite_index = sprAxelV1Idle;
			attack = 0;
			alarm[1] = 30;
			exit;
		}
	}
	
	//PowerBalls
	if(attack = 2)
	{
		if(objPlayer.x > x)
		{
			image_xscale = -1;
		}else{
			image_xscale = 1;
		}
		
		a += 1;
		if(a = 1)
		{
			instance_create_depth(x, y-72, depth-2, objOrbCharge)
			audio_play_sound(sndOnlineChatBox, 0, 0);
			alarm[0] = 50;
			exit;
		}
		
		if(a < 5)
		{
			instance_create_depth(x, y-70, depth-1, objEnergyOrb);
			alarm[0] = 25;
		}else
		{
			if(instance_exists(objOrbCharge))
			{
				instance_destroy(objOrbCharge);
			}
			
			attack = 0;
			alarm[1] = 60;
			exit;
		}
	}
	
	//Sword
	if(attack = 3)
	{
		a += 1;
		if(a = 1)
		{
			audio_play_sound(sndAlertSound, 0, 0);
			alarm[0] = 50;
			exit;
		}
		
		if(a = 2)
		{	
			canHurt = true;
			x = objPlayer.x+choose(46, -46);
			
			if(objPlayer.x > x)
			{
				image_xscale = -1;
			}else{
				image_xscale = 1;
			}
			
			image_speed = 0;
			sprite_index = sprAxelV1SlashDown;
			image_index = 0;
			alarm[0] = 30;
		}
		
		if(a = 3)
		{
			image_speed = 1;
			sc_Shake(5, 10);
			audio_play_sound(sndSwordDraw, 0, 0);
			alarm[0] = 2;
		}
		
		if(a > 3)
		{
			if(image_index > 5)
			{
				if(b = 4)
				{
					attack = 0;
					canHurt = false;
					image_speed = 1;
					sprite_index = sprAxelV1Idle;
					alarm[1] = 40;
					exit;
				}else
				{
					image_index = 6;
					image_speed = 0;
					a = 1;
					b += 1;
					alarm[0] = 10;
				}
			}else
			{
				alarm[0] = 2;
			}
		}
	}
}else
{
	sprite_index = sprAxelV1Idle;
	hspeed = 0;
	
	if(instance_exists(objOrbCharge))
	{
		instance_destroy(objOrbCharge);
	}
}