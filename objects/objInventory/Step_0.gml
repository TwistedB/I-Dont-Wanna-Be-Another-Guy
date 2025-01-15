if(keyboard_check_pressed(global.controls.act) && counter < 0 && instance_exists(objPlayer))
{
	counter = maxCounter;
	selected += 1;
	audio_play_sound(sndWeaponSwitch, 0, 0);
	nextRotate += 45;
}

if (keyboard_check_pressed(ord("1")) && counter < 0 && instance_exists(objPlayer) && selected != 0)
{
	counter = maxCounter;
	selected = 0;
	audio_play_sound(sndWeaponSwitch, 0, 0);
	nextRotate += 45;
}

if (keyboard_check_pressed(ord("2")) && counter < 0 && instance_exists(objPlayer) && selected != 1)
{
	counter = maxCounter;
	selected = 1;
	audio_play_sound(sndWeaponSwitch, 0, 0);
	nextRotate += 45;
}

if (keyboard_check_pressed(ord("3")) && counter < 0 && instance_exists(objPlayer) && selected != 2)
{
	counter = maxCounter;
	selected = 2;
	audio_play_sound(sndWeaponSwitch, 0, 0);
	nextRotate += 45;
}

if (keyboard_check_pressed(ord("4")) && counter < 0 && instance_exists(objPlayer) && selected != 3)
{
	counter = maxCounter;
	selected = 3;
	audio_play_sound(sndWeaponSwitch, 0, 0);
	nextRotate += 45;
}

function randomSwitch()
{
	counter = maxCounter;
	selected = choose(0, 1, 2, 3);
	audio_play_sound(sndWeaponSwitch, 0, 0);
	nextRotate += 45;
}


if(selected >= array_length(global.inventoryItems))
{
	selected = 0;
}

if(gearRotate < nextRotate)
{
	gearRotate += 5;
}

if(gearRotate > nextRotate)
{
	gearRotate = nextRotate;
}


global.selectedItem = selected;
counter -= 1;

if(instance_exists(objPlayer))
{
	image_alpha = 1;
}else
{
	image_alpha -= 0.1;
}