/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

groundY = 432;

audio_stop_sound(sndBuzzsaw);

OutsideView = false;

maxHP = hp;

auraCounter = 0;

alarm[1] = 2;

mask_index = sprEmpty;
startY = y;

audio_stop_sound(bgmLexa);

hasSpoken = false;
isSpeaking = false;

fightStart = false;

phase2 = 0;
auraSpawn = false;

if(global.foughtLexaBefore = true)
{
	if(instance_exists(objDialogueTrigger))
	{
		instance_destroy(objDialogueTrigger);
	}
}

a = 0
b = 0
c = 0
d = 0
e = 0;

repeatTp = 0;
fastTp = false;

tpw = choose(1, 2);

attack = 0;