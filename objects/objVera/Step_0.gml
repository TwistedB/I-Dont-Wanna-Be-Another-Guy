if (place_meeting(x, y, objPlayer))
{
	canTalk = true;
}else
{
	canTalk = false;
}

if(canTalk = true && keyboard_check_pressed(global.controls.shoot) && isTalking = false)
{
	talkAmount += 1;
	isTalking = true;
	if(talkAmount = 1)
	{
		Say(["The land is always changing, isnt it?", "So tell me-how do you think your resolve will shape it?"], [null, null], [c_red, c_red]);
	}else
	{
		Say(["Only time will tell."], [null], [c_red]);	
	}
}

if(instance_number(objDrawDialouge) > 0)
{
	isTalking = true;
}else
{
	isTalking = false;
}