/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(is_active_trigger("BossStart") && fightStart = false)
{
	if(global.foughtLexaBefore = false)
	{
		Say(["So be it then."], [null], [c_aqua]);
		global.foughtLexaBefore = true;
	}
	
	if(!instance_exists(objDrawDialouge))
	{
		instance_create_depth(x, y, depth+1, objLexaWings);
		fightStart = true;
		play_music(bgmLexa, 1);
		mask_index = sprite_index;
		alarm[0] = 70;
	}
}

if(fightStart = true)
{
	if(instance_exists(objDrawDialouge))
	{
		isSpeaking = true;
		
		with(objLexaSaw)
		{
			instance_destroy();
		}

		with(objLexaBullet)
		{
			instance_destroy();
		}
	}
	
	if(!instance_exists(objDrawDialouge) && isSpeaking = true && hasSpoken = false)
	{
		hasSpoken = true;
		attack = 0;
		alarm[0] = 5;
	}
}

if(instance_exists(objPlayer))
{
	if(x > objPlayer.x + 160 || x < objPlayer.x - 160)
	{
		OutsideView = true;
	}else
	{
		OutsideView = false;
	}
}else
{
	audio_stop_sound(bgmLexa);
}


