if(fightStart = true)
{
	var pc;
	pc = (hp / maxHP) * 100;
	draw_healthbar(150, 20, 500, 40, pc, c_black, c_white, c_white, 0, true, true)
	
	if(OutsideView && instance_exists(objPlayer))
	{
		if(x > objPlayer.x)
		{
			draw_sprite_ext(sprWarningSign, 0, 600, 180, -2, 2, 0, c_white, 1)
		}else
		{
			draw_sprite_ext(sprWarningSign, 0, 40, 180, 2, 2, 0, c_white, 1)
		}
	}
}