canTalk = true;
isTalking = true;

if(event != -1)
{
	if(global.event != event)
	{
		instance_destroy();
	}
}
