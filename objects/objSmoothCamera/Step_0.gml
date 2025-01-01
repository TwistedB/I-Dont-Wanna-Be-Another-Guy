var cam = camera_properties(0);

if (instance_exists(objPlayer)) {
	target_x = objPlayer.x - cam.view_w / 2;
	target_y = objPlayer.y - 16 - cam.view_h / 2;
}

if(!instance_exists(objShake))
{
	now_x = lerp(now_x, target_x, view_spd);
	now_y = lerp(now_y, target_y, view_spd);

	if (!leave_room) {
		now_x = clamp(now_x, 0, room_width - cam.view_w);
		now_y = clamp(now_y, 0, room_height - cam.view_h);
	}

	camera_set_view_pos(cam.view_cam, now_x, now_y);
}else
{
	now_x = lerp(now_x, target_x, view_spd);
	now_y = lerp(now_y, target_y, view_spd);

	if (!leave_room) {
		now_x = clamp(now_x, 0, room_width - cam.view_w);
		now_y = clamp(now_y, 0, room_height - cam.view_h);
	}

	camera_set_view_pos(cam.view_cam, now_x + objShake.shakex, now_y + objShake.shakey);
}