//Enter state
if(state == 0)
{
	timer++;
	
	//Change room
	if(timer >= duration)
	{
		instance_destroy(objPlayer);
		room_goto(targetRoom);
		//set state
		state = 1;
	}
}else if(state == 1)
{
	timer--;
	if(timer <= 0)
	{
		instance_destroy();
	}
}

//Set alpha
alpha = timer / duration;