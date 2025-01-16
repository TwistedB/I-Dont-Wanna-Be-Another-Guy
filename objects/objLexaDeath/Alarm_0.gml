if(instance_exists(objPlayer))
{
	dioNumber += 1;
	currentTalking = true;
	Say(["I meant it when I said your journey ends here.", "You wont make it past this point."], [null, null], [c_aqua, c_aqua]);
}