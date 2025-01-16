event_inherited();

if(dioNumber = 1 && currentTalking = true)
{
	if(!instance_exists(objDrawDialouge))
	{
		image_index = 0;
		sprite_index = sprLexaV1HandUp;
		image_index = 0;
		currentTalking = false;
		dioNumber += 1;
	}
}

if(sprite_index = sprLexaV1HandUp)
{
	if(image_index >= 4)
	{
		sprite_index = sprLexaV1HandUpFull;
		audio_play_sound(sndAlertSound, 0, 0);
		alarm[1] = 50;
	}
}

if(dioNumber = 3 && currentTalking = true)
{
	if(!instance_exists(objDrawDialouge))
	{
		chargeAttack = true;
		audio_play_sound(sndFinalCharge, 0, 0);
		fadeToRoom(rTrueClear, c_white, 300)
		dioNumber += 1;
		currentTalking = false;
	}
}

if(chargeAttack = true)
{
	sc_Shake(1, 32);
}