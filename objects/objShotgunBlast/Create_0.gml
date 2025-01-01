dir = 1;

iAm = 2;

whichDir = 0;

if (instance_exists(objPlayer)) {
	dir = (global.forms.lunarkid) ? objPlayer.image_angle + 90 : objPlayer.xscale;
	whichDir = objPlayer.aimingUp;
	
	if(whichDir = 0)
	{
		if(objPlayer.xscale = 1)
		{
			x += 8;
		}else
		{
			x-= 8;
			image_xscale = -1;
		}
	}
	
	if(whichDir = 1)
	{
		image_speed = 1.5;
		image_angle = 90;
		if(objPlayer.xscale = 1)
		{
			x += 6;
			y-= 6;
		}else
		{
			x-= 6;
			y-= 6;
		}
	}
	
	if(whichDir = -1)
	{
		image_speed = 1.5;
		objPlayer.vspd = -4;
		image_angle = -90;
		y += 8;
	}
}
var spd = 0.1
dmg = 2;
audio_play_sound(sndShotgunBlast, 0, 0);

if(whichDir = 0)
{
	if(objPlayer.hspd != 0)
	{
		image_speed = 1.5;
		spd = 3;
	}else
	{
		image_speed = 1.5;
		spd = 0.5;
	}

	if(objPlayer.isSliding)
	{
		spd = 6;
		image_speed = 2;
	}
}

if(objPlayer.aimingUp = 1 || objPlayer.aimingUp = -1)
{
	spd = 0.5;
}

var time = (global.slowshot) ? 800 : 40;

if (global.slowshot) {
	spd = 1;
}

if (global.forms.lunarkid) {
	direction = dir;
	speed = spd;
} else {
	if(whichDir = 0)
	{
		hspeed = spd * dir;
	}
	
	if(whichDir = 1)
	{
		vspeed = -spd;
	}
	
	if(whichDir = -1)
	{
		vspeed = spd;
	}
}

if (!global.forms.telekid) {
	alarm[0] = time;
}