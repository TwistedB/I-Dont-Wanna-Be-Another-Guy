messageDraw = "hi";
portraitList = array_create(1, [sprPortraitPlaceholder]);

sideColor = array_create(1, [c_blue]);

char = 0;

currentMessage = 0
messageList = array_create(1, ["Hello"]);

waitTime = 20;

fadeIn = 0;

xSlide = 0;

startX = -100;
endX = 0;

xSlide = startX;

dioFade = 1;

portraitFadein = 0;

existingFor = 0;

if(instance_exists(objPlayer))
{
	objPlayer.frozen = true;
}