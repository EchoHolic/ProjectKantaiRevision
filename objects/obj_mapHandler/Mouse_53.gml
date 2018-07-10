/// @description Insert description here
// You can write your code in this editor
if(selected == true && alarm[0] == -1){
	if(mouse_x > 740 && (mouse_y > 152 && mouse_y < 560)){
		exit;	
	}
	selected=false;
	selectedMap=0;
	with(obj_btnSortieBattleConfirm){instance_destroy()};
	alarm[0]=10;
}