image_xscale = myScale;
image_yscale = myScale;

if(myScale < maxScale + 0.2 && scaled = false)
{
	myScale += 0.1;
}else if(myScale >= maxScale + 0.2)
{
	scaled = true;
}

if(scaled = true)
{
	myScale = maxScale;
}