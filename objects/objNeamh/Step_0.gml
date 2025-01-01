event_inherited();
image_angle = sine_wave(current_time / 1000, 7, -5, 0);

if(is_active_trigger("BossStart") && fightStart = false)
{
	fightStart = true;
	alarm[0] = 40;
}

orbAngle += 1;

if(fightStart = true)
{
	image_alpha += 0.03;
	if(y > startY)
	{
		y -= 5;
	}else
	{
		y = startY;
	}
}

orbY = sine_wave(current_time / 1000, 3, 8, 0);
