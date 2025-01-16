if(instance_exists(objPlayer))
{
	instance_create_depth(x, y, depth+1, objLexaShadow);
	x = objPlayer.x + 64;
}

event_inherited();

audio_play_sound(sndExplosion, 0, 0);
sc_Shake(30, 30);
alarm[0] = 75;

dioNumber = 0;

currentTalking = false;
chargeAttack = false;