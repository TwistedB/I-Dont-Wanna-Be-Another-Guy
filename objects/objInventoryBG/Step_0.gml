if(!instance_exists(objInventory) || !instance_exists(objPlayer))
{
	instance_destroy();
}

depth = objInventory.depth + 1;

image_alpha = myAlpha;
myAlpha -= 0.03;
bgScale += 0.03;

if(myAlpha < 0)
{
	instance_destroy();
}
	