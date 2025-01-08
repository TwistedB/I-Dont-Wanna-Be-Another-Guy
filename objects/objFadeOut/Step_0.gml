if(image_index > 7)
{
		if (warp_x == -1 && warp_y == -1) {
			instance_destroy(objPlayer);
		} else {
			if (warp_x != -1) {
				objPlayer.x = warp_x + 23;
			}
	
			if (warp_y != -1) {
				objPlayer.y = warp_y + 17;
			}
		}
		image_speed = 0;
		room_goto(room_to);	
}