if(instance_exists(objPlayer))
{
	if(place_meeting(x, y-1, objPlayer))
	{
		if(activateOnTouch = true)
		{
			hspeed = xSpeed;
			vspeed = ySpeed;
		}
		
		objPlayer.Beingdragged = true;
		objPlayer.dragSpeed = xSpeed;
		if(ySpeed > 0)
		{
			objPlayer.vspd += ySpeed;
		}else if(ySpeed < 0)
		{
			objPlayer.vspd -= 7;
		}
		activated = true;
	}else
	{
		if(activated = true)
		{
			activated = false;
			objPlayer.Beingdragged = false;
		}
	}
}