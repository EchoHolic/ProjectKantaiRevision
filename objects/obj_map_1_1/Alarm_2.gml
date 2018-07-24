//This alarm is for checking fleet sizes, and moving into battle once fleet formation is selected.
if(fleet_size_get(0) < 4){
	formation_selected=0;
	global.Move_Room=1;
	obj_saver.alarm[0]=60;
	obj_map_1_1.alarm[3]=60;
}