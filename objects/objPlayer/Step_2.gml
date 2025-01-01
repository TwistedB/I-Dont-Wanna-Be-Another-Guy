#region End Step collision with block
///Resolve collisions between step and now, collide with dynamic blocks
if (instance_place_check(x, y, objBlock, tangible_collision) != null) {
    var dir_x = sign(x - xsafe);
    var dir_y = sign(y - ysafe);
    var epsilon = 0.001; //Appease the floating point gods
    
    //If something moved the player into a block since Step, move back towards where we were until we're out of a block.
	while (instance_place_check(x, y, objBlock, tangible_collision) == null) {
        if (dir_x * (x - xsafe) >= epsilon) {
            x -= sign(x - xsafe) * min(abs(x - xsafe), 1);
        } else if (dir_y * (y - ysafe) >= epsilon) {
            y -= sign(y - ysafe) * min(abs(y - ysafe), 1);
        } else {
			break;
		}
    }
}

dynamic_collision(false);
#endregion

#region Old collision with platform
if (!global.forms.lunarkid) {
	var platform = instance_place_check(x, y, objPlatform, tangible_collision);

	if (platform != null && platform.visible) {
		if (platform.snap > 0 && ((global.grav == 1 && y - vspd / 2 <= platform.bbox_top) || (global.grav == -1 && y - vspd / 2 >= platform.bbox_bottom))) {
			y = (global.grav == 1) ? platform.bbox_top - 9 : platform.bbox_bottom + 8;
			vspd = platform.vspeed;
			
			if (platform.object_index != objDisappearPlatform) {
				on_platform = true;
			}
			
			reset_jumps();
		}
		
		if (platform.object_index == objDisappearPlatform) {
			platform.visible = false;
		}
	}
}
#endregion
 
#region Collision with killers
var killer = instance_place_check(x, y, objPlayerKiller, tangible_collision);

if (killer != null && killer.visible) {
	if(invTime < 0 && focusMode < 0)
	{
		kill_player();
	}else if(invTime > 0 && focusMode < maxFoxus)
	{
		audio_play_sound(sndCounter, 0, 0);
		alarm[2] = 5
		invTime = 0;
		focusMode = 20;
	}
}

if(focusMode = 0)
{
	instance_create_layer(x, y, layer, objRegenBar);
}

if(focusMode > 0)
{
	game_set_speed(40, gamespeed_fps);
	speedDivider = 1;
	
	layer_background_blend(bgId, #52535c)
}else
{
	game_set_speed(50, gamespeed_fps);
	speedDivider = 1.3;
	
	layer_background_blend(bgId, c_white)
}

hit = approach(hit, 0, 1);
image_alpha = (hit > 0) ? 0.7 : 1;
#endregion

#region Touches screen border
if (global.outside_kills && outside_room()) {
	kill_player();
}
#endregion

set_mask();