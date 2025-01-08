event_inherited();

if(is_active_trigger("BossStart") && fightStart = false)
{
	play_music(bgmCirnosTheme, true);
	fightStart = true;
	mask_index = sprite_index;
	alarm[0] = 80;
	vspeed = -6
}

if(y < 240)
{
	vspeed = 0;
}

var time = current_time / 1000;
image_yscale = sine_between(time, 1, 0.75, 1);
image_angle = sine_wave(time, 2, 15, 0);
