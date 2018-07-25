//This alarm is for checking fleet sizes, and moving into battle once fleet formation is selected.
if(fleet_size_get(0) < 4){
	formation_selected=0;
	obj_map_1_1.alarm[3]=90;
}