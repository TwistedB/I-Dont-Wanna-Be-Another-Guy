if(place_meeting(x, y, objPlayer))
{
	isTouching = true;
}else
{
	isTouching = false;
}

if(isTouching = true && instance_exists(objPlayer))
{
	if(keyboard_check_pressed(global.controls.shoot) && objPlayer.frozen = false)
	{
		var fade = instance_create_layer(x, y, layer, objFadeOut);
		fade.room_to = room_to;
		fade.warp_x = warp_x;
		fade.warp_y = warp_y;
	}
}