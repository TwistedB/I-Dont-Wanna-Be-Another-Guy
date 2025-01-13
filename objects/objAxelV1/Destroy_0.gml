if(global.items[$ "bosses"][1] = false)
{
	global.items[$ "bosses"][1] = true;
	event_inherited();
	instance_create_depth(x, y, depth, objAxelV1Death);
	activate_trigger("BossDefeat");
	sc_Shake(20, 50)
	objInventory.showBG = false;
}else
{
	objInventory.showBG = false;
	instance_create_depth(x, y, depth, objAxelV1Death);
}
