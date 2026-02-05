/// @function Say(messages,portraits,colours);
/// @param {real} messages
/// @param {real} portraits
/// @param {real} colours
function Say(messages, portraits, colours){
	textObj = instance_create_depth(0, 0, -200, objDrawDialouge);
	textObj.messageList = messages;
	textObj.portraitList = portraits;
	textObj.sideColor = colours;
}