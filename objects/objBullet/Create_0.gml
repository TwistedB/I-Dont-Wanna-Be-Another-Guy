dir = 1;
alarm[0] = 50;
dmg = 1;

iAm = 0;

whichDir = 0;

if (instance_exists(objPlayer)) {
	dir = (global.forms.lunarkid) ? objPlayer.image_angle + 90 : objPlayer.xscale;
	whichDir = objPlayer.aimingUp;
}

var spd = (global.forms.telekid) ? 3 : 16;
var time = (global.slowshot) ? 800 : 60;

if (global.slowshot) {
	spd = 1;
}

if (global.forms.lunarkid) {
	direction = dir;
	speed = spd;
} else {
	hspeed = spd * dir;
}

mySpeed = hspeed;

if(whichDir = -1)
{
	hspeed = 0;
	vspeed = abs(mySpeed);
}

if(whichDir = 1)
{
	hspeed = 0;
	vspeed = -abs(mySpeed);
}

if (!global.forms.telekid) {
	alarm[0] = time;
}