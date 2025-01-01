function Say(){
	textObj = instance_create_depth(0, 0, -200, objDrawDialouge);
	textObj.messageList = argument0;
	textObj.portraitList = argument1;
	textObj.sideColor = argument2;
}