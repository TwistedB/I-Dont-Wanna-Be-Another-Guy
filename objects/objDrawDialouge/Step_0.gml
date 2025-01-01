//Text Effect
char += 0.6;

//it has an error but it works fine
messageDraw = string_copy(messageList[currentMessage], 0, char);

if(char < string_length(messageList[currentMessage]))
{
	if(existingFor % 2 == 1){
		audio_play_sound(sndTextBlit, 0, 0, 1, 0, random_range(0.8, 1.2));
	}
}

if(waitTime < 0 && keyboard_check_pressed(global.controls.shoot))
{
	if(currentMessage + 1 < array_length(messageList))
	{
		dioFade = 1;
		char = 0;
		waitTime = 30;
		currentMessage += 1;
		audio_play_sound(sndTextNext, 0, 0);
	}else
	{
		instance_destroy();
	}
	
	if(array_length(messageList) > 1)
	{
		if(portraitList[currentMessage] != portraitList[currentMessage-1])
		{
			xSlide = startX;
			portraitFadein = 0;
		}
	}else
	{
		instance_destroy();
	}
}

if(fadeIn < 4)
{
	fadeIn += 0.05;
}

if(dioFade > 0)
{
	dioFade -= 0.05;
}

if(portraitFadein < 4)
{
	portraitFadein += 0.05;
}
waitTime -= 1;

if(xSlide < endX-10)
{
	xSlide += 10;
}
if(xSlide < endX)
{
	xSlide += 5;
}

if(existingFor < 50)
{
	existingFor += 1
}else
{
	existingFor = 0;
}