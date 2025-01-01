var cam = camera_properties(0);
if (instance_exists(objPlayer)) {
	if(followX = false)
	{
		target_x = x + sprite_width/2 - cam.view_w / 2;
	}else
	{
		target_x = objPlayer.x - cam.view_w / 2;
	}
	
	if(followY = false)
	{
		target_y = y + sprite_height/2 - cam.view_h / 2 - yOffset;
	}else
	{
		target_y = objPlayer.y - cam.view_h / 2 - yOffset;
	}
}

	now_x = lerp(now_x, target_x, tgSpeed);
	now_y = lerp(now_y, target_y, tgSpeed);

	now_x = clamp(now_x, 0, room_width - cam.view_w);
	now_y = clamp(now_y, 0, room_height - cam.view_h);

if(isTouching = true){
	if(instance_exists(objShake))
	{
		camera_set_view_pos(cam.view_cam, now_x + objShake.shakex, now_y + objShake.shakey);
	}else
	{
		camera_set_view_pos(cam.view_cam, now_x, now_y);
	}
	
}