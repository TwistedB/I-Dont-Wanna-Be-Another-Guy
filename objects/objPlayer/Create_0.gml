#region Init
set_mask();
xscale = global.last_xscale;
image_angle = global.save_player.sangle;

speedDivider = 1.3;

slideMaxRegen = 6;
slideCounter = slideMaxRegen;

trailCounter = 3;

isCrouching = false;
isSliding = false;
canSlideShoot = false;
aimingUp = 1;

Beingdragged = false;
dragSpeed = 0;

weaponSelected = 0;
reloadTimes = [5, 30, 35, 20];
reload = reloadTimes[weaponSelected];

cantChangeSprite = 0;
invTime = -20;
maxFoxus = -90;
focusMode = maxFoxus;

var lay_id = layer_get_id("Background");
bgId = layer_background_get_id(lay_id);

#region Local Speed
hspd = 0;
vspd = 0;
grav = 0;
#endregion

#region Max Speed
max_hspd = 3;
max_vspd = 9;
grav_amount = (global.forms.lunarkid) ? 0 : 0.4;
#endregion

#region Speed Modifiers
spd_mod = {
	//Common 
	fast: 0,
	slow: 0,
	
	//RBN Speed
	auto: 0,
	buffer: 0
}

grav_mod = {
	//Common 
	low: 0,
	high: 0,
	
	//RBN Grav
	zero: 0,
	anti: 0
};
	
water_mod = {
	//Ocean Wetventure
	bubble: 0,
	platform: 0,
	weird: 0
};

max_poison = 130;
poison_time = max_poison;
#endregion

#region Jump Variables
jump_height = [8.5/speedDivider, 7.5/speedDivider];
jump_total = 2;

jump_mod = {
	//Jumple Refrenture
	high: 0,
	low: 0,
	flip: 0,
	tele: 0,
	fast: 0,
	swap: 0,
	slowmo: 0
};

vine_mod = {
	//Jungle Adventure
	stick: 0,
	lowgrav: 0,
	fire: 0,
	
	//RBN Light
	zerograv: 0,
	
	//Effects
	count: 0
};
#endregion

#region Collision and Actions
on_block = false;
on_ice = false;

on_conveyor = false;
on_elevator = false;

on_platform = false;
on_ladder = false;

lunar_start = false;

test_dist = {
	orig: 0,
	xpos: 0,
	ypos: 0,
	xneg: 0,
	yneg: 0
}

frozen = false;

skins = {
	"Normal": {
		"Idle": sprPlayerIdle,
		"Run": sprPlayerRun,
		"Jump": sprPlayerJump,
		"Fall": sprPlayerFall,
		"Slide": sprPlayerSlide,
		
		"Climb": sprPlayerClimb,
		"Climb_Horizontal": sprPlayerClimbHorizontal,
		"Climb_Vertical": sprPlayerClimbVertical,
		
		"Dotkid": sprPlayerDotkid,
		"Lunarkid": sprPlayerLunarkid,
		"Linekid": sprPlayerLinekid,
		
		"Crouching": sprPlayerCrouch,
		"GSlide": sprPlayerGroundSlide,
		
		"Throw": sprPlayerThrow,
		"Detonate": sprPlayerDetonate,
		"Sword": sprPlayerSword,
		
		"IdleUp": sprPlayerIdleUp,
		"RunUp": sprPlayerRunUp,
		"JumpUp": sprPlayerJumpUp,
		
		"JumpDown": sprPlayerJumpDown,
	},
	
	"Harbinger": {
		"Idle": sprGUYIdle,
		"Run": sprGUYRun,
		"Jump": sprGUYJump,
		"Fall": sprGUYFall,
		"Slide": sprGUYSlide,
		
		"Climb": sprPlayerClimb,
		"Climb_Horizontal": sprPlayerClimbHorizontal,
		"Climb_Vertical": sprPlayerClimbVertical,
		
		"Dotkid": sprPlayerDotkid,
		"Lunarkid": sprPlayerLunarkid,
		"Linekid": sprPlayerLinekid,
		
		"Crouching": sprGUYCrouch,
		"GSlide": sprGUYGroundSlide,
		
		"Throw": sprGUYThrow,
		"Detonate": sprGUYDetonate,
		"Sword": sprGUYSword,
		
		"IdleUp": sprGUYIdleUp,
		"RunUp": sprGUYRunUp,
		"JumpUp": sprGUYJumpUp,
		
		"JumpDown": sprGUYJumpDown,
	}
};

skin = "Normal";
reset_jumps();

xsafe = x;
ysafe = y;

dynamic_collision(true);

hit = 0;
hit_x = x;
hit_y = y;
#endregion
#endregion

if(!instance_exists(objInventory))
{
	instance_create_depth(x, y, -50, objInventory);
}