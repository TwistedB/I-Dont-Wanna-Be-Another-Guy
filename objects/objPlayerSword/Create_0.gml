iAm = 3;

dir = 1;
if (instance_exists(objPlayer)) {
	dir = (global.forms.lunarkid) ? objPlayer.image_angle + 90 : objPlayer.xscale;
	
	if(objPlayer.xscale = 1)
	{
		x += 8;
	}else
	{
		x-= 8;
		image_xscale = -1;
	}
}
var spd = 0.1
dmg = 4.5;
audio_play_sound(sndSwordSlash, 0, 0);

if(objPlayer.hspd != 0)
{
	spd = 3.2;
}else
{
	spd = 1.4;
}

if(objPlayer.isSliding)
{
	spd = 3.2;
}

var time = (global.slowshot) ? 800 : 40;

if (global.slowshot) {
	spd = 1;
}

if (global.forms.lunarkid) {
	direction = dir;
	speed = spd;
} else {
	hspeed = spd * dir;
}

if (!global.forms.telekid) {
	alarm[0] = time;
}