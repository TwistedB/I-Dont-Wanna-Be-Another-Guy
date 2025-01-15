if(instance_exists(objLexaV1))
{
	y = objLexaV1.y - 150;
	x = objLexaV1.x+7;
	depth = objLexaV1.depth + 1;
}

image_alpha = 0;
BelowY = false;
myYSpeed = 0;
fullAlpha = false;
lockedIn = false;

audio_play_sound(sndWingsAttatch, 0, 0);

quickShake = false;

drawWings = false;