/// @description Insert description here
// You can write your code in this editor
if(obj_mapHandler.selected == 1){
	obj_mapHandler.selected = 2;
	obj_mapHandler.alarm[1] = 10;
	exit;
}
if(obj_mapHandler.selected == 2 && obj_mapHandler.selectedMap == 1){
	global.Move_Room=1;
	obj_saver.alarm[0]=60;
	obj_mapHandler.alarm[2]=60;
}