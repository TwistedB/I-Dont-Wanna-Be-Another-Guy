if instance_exists(objPlayer)
{
	//Standby
	if(attack = 0)
	{
	    a = 0
        b = 0
        c = 0
        d = 0	
		e = 0;
		
		if(hp <= maxHP / 2)
		{
			if(hasSpoken = true)
			{
				phase2 += 1;
			}else
			{
				Say(["You may be strong but this is were your journey ends.", "Goodbye."], [null, null], [c_aqua, c_aqua]);
				attack = 100;
				stop_music();
				alarm[0] = 5;
				exit;
			}
		}
		
		if(phase2 != 1 && phase2 != 2)
		{
			tpw = irandom_range(1, 3);
		
			if(tpw = 1)
			{
				if(hp <= maxHP / 2)
				{
					repeatTp = 0;
					fastTp = true;
					alarm[2] = 6;
				}					
				else
				{
					instance_create_depth(x, y, depth, objLexaEffect);
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
				}
			}
			
		
			if(tpw = 2)
			{
				var Effect2 = instance_create_depth(objPlayer.x, objPlayer.y, objPlayer.depth-1, objLexaEffect);
				Effect2.sprite_index = sprLexaCHEffect;
				if(instance_exists(objInventory))
				{
					objInventory.randomSwitch();
				}
			}
		}else
		{
			var mus = asset_get_index(audio_get_name(bgmLexa));
			var ct = audio_sound_get_track_position(mus);
			
			if(ct < 130)
			{
				stop_music();
			}
			
			if(phase2 = 1)
			{
				auraSpawn = true;
				audio_play_sound(sndExplosion, 0, 0, 1, 0, 0.5);
				sc_Shake(10, 20);
				alarm[0] = 30;	
				exit;			
			}
			
			if(ct < 130 && phase2 = 2)
			{
				audio_play_sound(bgmLexa, 0, 1, 1, 130)
				alarm[0] = 20;	
				exit;		
			}else if(ct >= 130 && phase2 = 2)
			{
				audio_play_sound(bgmLexa, 0, 1, 1, ct)
				alarm[0] = 20;	
				exit;		
			}
			
		}
		
		if(phase2 != 1 && phase2 != 2)
		{
			if(hp <= maxHP / 2)
			{
				attack = choose(1, 2, 3);
				if(fastTp = false)
				{
					alarm[0] = 15;	
				}else
				{
					alarm[0] = 50;	
				}
				exit;
			}else
			{
				attack = choose(1, 2, 3);
				alarm[0] = 30;	
				exit;			
			}
		}
	}
	
	//Saw blades
	if(attack = 1)
	{
		a += 1;
		if(a = 1)
		{
			var sawA = instance_create_depth(x, y, depth-1, objLexaSaw);
			var sawB = instance_create_depth(x, y, depth-1, objLexaSaw);
			sawA.leftOrRight = 1;
			sawB.leftOrRight = -1;
			if(hp > maxHP / 2)
			{
				alarm[0] = 30;
				exit;
			}else
			{
				alarm[0] = 40;
				exit;			
			}	
		}
		
		if(a = 2 && hp > maxHP / 2)
		{
			attack = 0;
			alarm[0] = 40;
			exit;	
		}else if(a = 2 && hp <= maxHP / 2)
		{
			var sawA = instance_create_depth(x, y, depth-1, objLexaSaw);
			var sawB = instance_create_depth(x, y, depth-1, objLexaSaw);
			sawA.leftOrRight = 1;
			sawB.leftOrRight = -1;		
			alarm[0] = 30;
			exit;
		}

		if(a = 3)
		{
			attack = 0;
			alarm[0] = 40;
			exit;	
		}

	}
	
	//Magic bullets
	if(attack = 2)
	{
		a += 1;
		
		if(a < 7)
		{
			if(hp > maxHP / 2)
			{
				var bullet = instance_create_depth(x+random_range(-64, 64), y+random_range(-64, -32), depth-1, objLexaBullet);
				alarm[0] = 25;
			}else
			{
				var bullet = instance_create_depth(x+random_range(-64, 64), y+random_range(-64, -32), depth-1, objLexaBullet);
				alarm[0] = 2;			
			}
		}else
		{
			attack = 0;
			alarm[0] = 30;
			exit;
		}
	}
	
	//Blade Circle
	if(attack = 3)
	{
		if(a < 2)
		{
			a += 1;
		}
		
		if(a = 1)
		{
			instance_create_depth(x, y, depth, objLexaEffect);
			x = choose(objPlayer.x+120, objPlayer.x-120);
			y = startY - 10;
			instance_create_depth(x, y, depth+1, objLexaV1MegaSaw);
			if(x > objPlayer.x)
			{
				c = -1;
			}else
			{
				c = 1;
			}
			
			if(hp <= maxHP / 2)
			{
				alarm[0] = 15;
				exit;
			}else
			{
				alarm[0] = 30;
				exit;
			}
		}
		
		if(a = 2)
		{
			if(c = 1)
			{
				if(hp <= maxHP / 2)
				{
					b += 0.5;
				}else
				{
					b += 0.3;
				}
			}else
			{
				if(hp <= maxHP / 2)
				{
					b -= 0.5;
				}else
				{
					b -= 0.3;
				}
			}
			
			if(b > 10 || b < -10)
			{
				a += 1
				alarm[0] = 20;
				exit;
			}else if(b <= 10 && b >= -10)
			{
				hspeed = b;
				alarm[0] = 2;
				exit;			
			}
		}
		
		if(a = 3)
		{
			y = startY
			instance_create_depth(x, y, depth, objLexaEffect);
			x = choose(objPlayer.x+100, objPlayer.x-100);	
			attack = 0;
			if(instance_exists(objLexaV1MegaSaw))
			{
				instance_destroy(objLexaV1MegaSaw);
			}
			hspeed = 0;
			alarm[0] = 30;
			exit;
		}
	}
}else
{
	hspeed = 0;
}