if (place_meeting(x, y, objPlayer))
{
	canTalk = true;
}else
{
	canTalk = false;
}

if(canTalk = true && keyboard_check_pressed(global.controls.shoot) && isTalking = false)
{
	isTalking = true;
	Say(dialouge, portrait, dioColour);
}

if(instance_number(objDrawDialouge) > 0)
{
	isTalking = true;
}else
{
	isTalking = false;
}