#region Game Checks
audio_master_gain(global.display.master_volume * global.display.master_volume);
audio_group_set_gain(audiogroup_BGM, global.display.bgm_volume * global.display.bgm_volume, 0);
audio_group_set_gain(audiogroup_SFX, global.display.sfx_volume * global.display.sfx_volume, 0);

if (global.game_started && !global.game_paused && (global.time_when_dead || instance_exists(objPlayer))) {
    time_micro += delta_time;
    global.time += time_micro div 1000000;
    time_micro %= 1000000;
}

set_caption();
#endregion

#region Main Inputs
if (global.game_started) {
	if (!global.game_paused) {
		if (is_pressed(global.controls.restart) && !global.controls_lock.restart) {
			restart_game();
		}
	} else {
		change_volume();
	}

	if (pause_delay < global.total_pause_delay) {
		pause_delay++;
	} else if (is_pressed(global.controls.pause) && !global.controls_lock.pause) {
		global.game_paused = !global.game_paused;
	
		if (global.game_paused) {
			pause_screen = sprite_create_from_surface(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height(), false, false, 0, 0);
			instance_deactivate_all(true);
			instance_activate_object(objOnlinePlayer);
		} else {
			instance_activate_all();
		
			if (sprite_exists(pause_screen)) {
				sprite_delete(pause_screen);
			}
		
			io_clear();
		}
	
		pause_delay = 0;
	}
}
#endregion

#region Misc. Inputs
if (is_pressed(global.controls_misc.overlay)) {
	global.overlay ^= true;
}

if (!global.game_paused) {
	//Toggles music
	if (keyboard_check(vk_control) && is_pressed(global.controls_misc.mute_music)) {
		global.display.mute_music ^= true;
		toggle_music();
		save_config();
	}


	//Reset game
	if (is_pressed(global.controls_misc.reset)) {
		end_game();
		stop_music();
		audio_stop_all();
		
		with (all) {
			if (object_index != objWorld && object_index != objTriggerController) {
				instance_destroy();
			}
		}
		
		room_goto(rTitle);
	}
	
	//Screenshot
	if (is_pressed(global.controls_misc.screenshot)) {
		var filename = get_string("Screenshot name: ", "");
		screen_save(string("Screenshots/{0}", filename + ".png"));
	}
}

//Close game
if (is_pressed(global.controls_misc.quit)) {
	game_end();
}
#endregion

#region Debug Inputs
if (global.debug_enable && global.game_started) {
	if (keyboard_check(vk_control) && is_pressed(global.controls_debug.god_mode)) {
		global.debug_god_mode ^= true;
	}
	
	if (keyboard_check(vk_control) && is_pressed(global.controls_debug.inf_jump)) {
		global.debug_inf_jump ^= true;
	}
	
	if (keyboard_check(vk_control) && is_pressed(global.controls_debug.hitbox)) {
		global.debug_hitbox++;
		global.debug_hitbox %= 3;
	}
	
	if (keyboard_check(vk_control) && is_pressed(ord("B"))) {
		global.collision_type ^= true;
	}
	
	if (instance_exists(objPlayer)) {
		if (global.debug_inf_jump) {
			reset_jumps();
		}
	
		if (keyboard_check_pressed(ord("1"))) {
			global.forms.dotkid ^= true;
		}
		
		if (keyboard_check_pressed(ord("2"))) {
			global.forms.vkid++;
			global.forms.vkid %= 3;
		}
		
		if (keyboard_check_pressed(ord("3"))) {
			global.forms.telekid ^= true;
		}
		
		if (keyboard_check_pressed(ord("4"))) {
			global.forms.lunarkid ^= true;
			
			with (objPlayer) {
				grav_amount = 0;
			}
		}
		
		if (keyboard_check_pressed(ord("5"))) {
			global.forms.linekid ^= true;
		}
	
		if (keyboard_check_pressed(ord("6"))) {
			sc_Shake(10, 10);
		}
		
		if (is_held(global.controls_debug.teleport)) {
			with (objPlayer) {
				x = mouse_x;
				y = mouse_y;
				vspd = 0;
			}
		}
	
		if (keyboard_check(vk_control) && is_pressed(global.controls_debug.save)) {
			save_game(true);
			audio_play_sound(sndShoot, 0, false);
		}
		
		if (is_pressed(global.controls_debug.roomD)) {
			if (room_get_name(room_previous(room)) != "rOptions") {
				instance_destroy(objPlayer);
				room_goto_previous();
			}
		}
		
		if (is_pressed(global.controls_debug.roomU)) {
			if (room != room_last) {
				instance_destroy(objPlayer);
				room_goto_next();
			}
		}
	}
}
#endregion